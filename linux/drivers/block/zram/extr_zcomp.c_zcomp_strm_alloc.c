
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zcomp_strm {void* buffer; int tfm; } ;
struct zcomp {int name; } ;


 int GFP_KERNEL ;
 scalar_t__ IS_ERR_OR_NULL (int ) ;
 int __GFP_ZERO ;
 scalar_t__ __get_free_pages (int,int) ;
 int crypto_alloc_comp (int ,int ,int ) ;
 struct zcomp_strm* kmalloc (int,int) ;
 int zcomp_strm_free (struct zcomp_strm*) ;

__attribute__((used)) static struct zcomp_strm *zcomp_strm_alloc(struct zcomp *comp)
{
 struct zcomp_strm *zstrm = kmalloc(sizeof(*zstrm), GFP_KERNEL);
 if (!zstrm)
  return ((void*)0);

 zstrm->tfm = crypto_alloc_comp(comp->name, 0, 0);




 zstrm->buffer = (void *)__get_free_pages(GFP_KERNEL | __GFP_ZERO, 1);
 if (IS_ERR_OR_NULL(zstrm->tfm) || !zstrm->buffer) {
  zcomp_strm_free(zstrm);
  zstrm = ((void*)0);
 }
 return zstrm;
}
