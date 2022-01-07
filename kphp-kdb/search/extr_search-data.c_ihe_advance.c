
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ cur; scalar_t__ cur0; scalar_t__ cur1; } ;
typedef TYPE_1__ iheap_en_t ;


 int assert (int ) ;
 int ihe_advance0 (TYPE_1__*) ;
 int ihe_advance1 (TYPE_1__*) ;

__attribute__((used)) static int ihe_advance (iheap_en_t *A) {
  if (!A->cur) { return 0; }
  if (A->cur == A->cur0) { return ihe_advance0 (A); }
  else if (A->cur == A->cur1) { return ihe_advance1 (A); }
  else assert (0);
  return 0;
}
