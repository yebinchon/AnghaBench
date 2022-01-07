
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct spu_state {TYPE_1__* lscsa; } ;
struct TYPE_2__ {unsigned char* ls; } ;


 int ClearPageReserved (int ) ;
 int LS_SIZE ;
 int PAGE_SIZE ;
 int vfree (TYPE_1__*) ;
 int vmalloc_to_page (unsigned char*) ;

void spu_free_lscsa(struct spu_state *csa)
{

 unsigned char *p;

 if (csa->lscsa == ((void*)0))
  return;

 for (p = csa->lscsa->ls; p < csa->lscsa->ls + LS_SIZE; p += PAGE_SIZE)
  ClearPageReserved(vmalloc_to_page(p));

 vfree(csa->lscsa);
}
