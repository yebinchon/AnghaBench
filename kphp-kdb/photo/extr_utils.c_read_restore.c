
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int val; struct TYPE_5__* next; } ;
typedef TYPE_1__ restore_list ;
typedef int map_int_vptr ;


 int CONV_ID (int) ;
 int assert (int) ;
 TYPE_1__** map_int_vptr_add (int *,int ) ;
 int * map_int_vptr_get (int *,int ) ;
 TYPE_1__* restore_list_alloc (int ) ;
 int restore_list_push_back (TYPE_1__*,int) ;

int read_restore (int *v, int n, map_int_vptr *h) {
  int i;
  restore_list *cur = ((void*)0);
  for (i = 0; i < n; i++) {
    int x = v[i];
    if (x < 0) {
      cur = restore_list_alloc (CONV_ID (x));
    } else {
      restore_list_push_back (cur, x);
    }
    if (i + 1 == n || v[i + 1] < 0) {
      assert (cur != ((void*)0));
      assert (cur->next != cur);
      assert (map_int_vptr_get (h, cur->val) == ((void*)0));
      *map_int_vptr_add (h, cur->val) = cur;
    }
  }
  return sizeof (int) * n;
}
