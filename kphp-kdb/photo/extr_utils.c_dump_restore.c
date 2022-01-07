
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int vptr ;
struct TYPE_2__ {int val; struct TYPE_2__* next; } ;
typedef TYPE_1__ restore_list ;


 int CONV_ID (int ) ;
 int * _restore_info ;
 scalar_t__ _restore_info_maxn ;
 scalar_t__ _restore_info_n ;
 int assert (int) ;

void dump_restore (int *i, vptr *_v) {
  restore_list *v = *(restore_list **)_v;

  assert (_restore_info_n < _restore_info_maxn);
  _restore_info[_restore_info_n++] = CONV_ID (v->val);

  restore_list *end = v;
  while (v->next != end) {
    v = v->next;

    assert (_restore_info_n < _restore_info_maxn);
    _restore_info[_restore_info_n++] = v->val;
  }
}
