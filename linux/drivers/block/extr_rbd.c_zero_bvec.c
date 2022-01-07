
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bio_vec {int bv_page; int bv_len; } ;


 void* bvec_kmap_irq (struct bio_vec*,unsigned long*) ;
 int bvec_kunmap_irq (void*,unsigned long*) ;
 int flush_dcache_page (int ) ;
 int memset (void*,int ,int ) ;

__attribute__((used)) static void zero_bvec(struct bio_vec *bv)
{
 void *buf;
 unsigned long flags;

 buf = bvec_kmap_irq(bv, &flags);
 memset(buf, 0, bv->bv_len);
 flush_dcache_page(bv->bv_page);
 bvec_kunmap_irq(buf, &flags);
}
