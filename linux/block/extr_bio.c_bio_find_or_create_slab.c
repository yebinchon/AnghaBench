
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kmem_cache {int dummy; } ;
struct bio_slab {unsigned int slab_size; int slab_ref; struct kmem_cache* slab; int name; } ;
struct bio {int dummy; } ;


 int ARCH_KMALLOC_MINALIGN ;
 int GFP_KERNEL ;
 int SLAB_HWCACHE_ALIGN ;
 int bio_slab_lock ;
 unsigned int bio_slab_max ;
 unsigned int bio_slab_nr ;
 struct bio_slab* bio_slabs ;
 struct kmem_cache* kmem_cache_create (int ,unsigned int,int ,int ,int *) ;
 struct bio_slab* krealloc (struct bio_slab*,unsigned int,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int snprintf (int ,int,char*,unsigned int) ;

__attribute__((used)) static struct kmem_cache *bio_find_or_create_slab(unsigned int extra_size)
{
 unsigned int sz = sizeof(struct bio) + extra_size;
 struct kmem_cache *slab = ((void*)0);
 struct bio_slab *bslab, *new_bio_slabs;
 unsigned int new_bio_slab_max;
 unsigned int i, entry = -1;

 mutex_lock(&bio_slab_lock);

 i = 0;
 while (i < bio_slab_nr) {
  bslab = &bio_slabs[i];

  if (!bslab->slab && entry == -1)
   entry = i;
  else if (bslab->slab_size == sz) {
   slab = bslab->slab;
   bslab->slab_ref++;
   break;
  }
  i++;
 }

 if (slab)
  goto out_unlock;

 if (bio_slab_nr == bio_slab_max && entry == -1) {
  new_bio_slab_max = bio_slab_max << 1;
  new_bio_slabs = krealloc(bio_slabs,
      new_bio_slab_max * sizeof(struct bio_slab),
      GFP_KERNEL);
  if (!new_bio_slabs)
   goto out_unlock;
  bio_slab_max = new_bio_slab_max;
  bio_slabs = new_bio_slabs;
 }
 if (entry == -1)
  entry = bio_slab_nr++;

 bslab = &bio_slabs[entry];

 snprintf(bslab->name, sizeof(bslab->name), "bio-%d", entry);
 slab = kmem_cache_create(bslab->name, sz, ARCH_KMALLOC_MINALIGN,
     SLAB_HWCACHE_ALIGN, ((void*)0));
 if (!slab)
  goto out_unlock;

 bslab->slab = slab;
 bslab->slab_ref = 1;
 bslab->slab_size = sz;
out_unlock:
 mutex_unlock(&bio_slab_lock);
 return slab;
}
