
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ tot_comments; TYPE_2__* last; TYPE_2__* first; } ;
typedef TYPE_1__ place_t ;
struct TYPE_6__ {struct TYPE_6__* next; } ;
typedef TYPE_2__ comment_t ;


 int COMM_MODE ;
 int assert (int) ;
 int free_comment (TYPE_2__*) ;

__attribute__((used)) static void free_comment_list (place_t *U) {
  assert (COMM_MODE);
  comment_t *p = U->first, *q;
  while (p != (comment_t *) U) {
    q = p->next;
    U->tot_comments--;
    assert (U->tot_comments >= 0);
    free_comment (p);
    p = q;
  }
  assert (!U->tot_comments);
  U->first = U->last = (comment_t *) U;
}
