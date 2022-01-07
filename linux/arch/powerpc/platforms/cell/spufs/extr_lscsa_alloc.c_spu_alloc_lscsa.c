
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spu_state {struct spu_lscsa* lscsa; } ;
struct spu_lscsa {unsigned char* ls; } ;


 int ENOMEM ;
 int LS_SIZE ;
 int PAGE_SIZE ;
 int SetPageReserved (int ) ;
 int vmalloc_to_page (unsigned char*) ;
 struct spu_lscsa* vzalloc (int) ;

int spu_alloc_lscsa(struct spu_state *csa)
{
 struct spu_lscsa *lscsa;
 unsigned char *p;

 lscsa = vzalloc(sizeof(*lscsa));
 if (!lscsa)
  return -ENOMEM;
 csa->lscsa = lscsa;


 for (p = lscsa->ls; p < lscsa->ls + LS_SIZE; p += PAGE_SIZE)
  SetPageReserved(vmalloc_to_page(p));

 return 0;
}
