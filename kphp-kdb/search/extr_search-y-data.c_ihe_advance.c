
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int cur; scalar_t__ cur1; scalar_t__ cur0; } ;
typedef TYPE_1__ iheap_en_t ;


 int assert (int) ;
 int ihe_advance0 (TYPE_1__*) ;
 int ihe_advance1 (TYPE_1__*) ;
 scalar_t__ likely (int) ;

__attribute__((used)) static int ihe_advance (iheap_en_t *A) {
  assert (A->cur);
  if (likely (A->cur == A->cur1)) { return ihe_advance1 (A); }
  assert (A->cur == A->cur0);
  return ihe_advance0 (A);
}
