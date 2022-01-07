
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ item_id; } ;
typedef TYPE_2__ item_t ;
struct TYPE_7__ {scalar_t__ item_id; size_t sp; TYPE_1__** TS; int positions; TYPE_2__* cur; int positions1; TYPE_2__* cur1; TYPE_2__* cur0; } ;
typedef TYPE_3__ iheap_en_t ;
struct TYPE_5__ {int positions; } ;


 int assert (int) ;
 scalar_t__ likely (int) ;

__attribute__((used)) static int ihe_load_I1_set (iheap_en_t *A) {
  item_t *I0 = A->cur0, *I1 = A->cur1;
  if (likely (I0 == ((void*)0) || I0->item_id > I1->item_id)) {
    A->item_id = (A->cur = I1)->item_id;
    A->positions = A->positions1;
    return 1;
  }
  A->item_id = (A->cur = I0)->item_id;
  assert (A->sp >= 0);
  A->positions = A->TS[A->sp]->positions;
  return 1;
}
