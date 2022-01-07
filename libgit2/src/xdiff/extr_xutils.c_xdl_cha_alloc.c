
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ nsize; int isize; TYPE_2__* ancur; TYPE_2__* tail; TYPE_2__* head; } ;
typedef TYPE_1__ chastore_t ;
struct TYPE_5__ {scalar_t__ icurr; struct TYPE_5__* next; } ;
typedef TYPE_2__ chanode_t ;


 scalar_t__ xdl_malloc (scalar_t__) ;

void *xdl_cha_alloc(chastore_t *cha) {
 chanode_t *ancur;
 void *data;

 if (!(ancur = cha->ancur) || ancur->icurr == cha->nsize) {
  if (!(ancur = (chanode_t *) xdl_malloc(sizeof(chanode_t) + cha->nsize))) {

   return ((void*)0);
  }
  ancur->icurr = 0;
  ancur->next = ((void*)0);
  if (cha->tail)
   cha->tail->next = ancur;
  if (!cha->head)
   cha->head = ancur;
  cha->tail = ancur;
  cha->ancur = ancur;
 }

 data = (char *) ancur + sizeof(chanode_t) + ancur->icurr;
 ancur->icurr += cha->isize;

 return data;
}
