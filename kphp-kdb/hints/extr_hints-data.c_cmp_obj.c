
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int object_table; } ;


 TYPE_1__* __u ;
 long long ltbl_get_rev (int *,int) ;

int cmp_obj (const void * _a, const void * _b) {
  int x = *(int *)_a, y = *(int *)_b;
  long long a = ltbl_get_rev (&__u->object_table, x), b = ltbl_get_rev (&__u->object_table, y);
  if (a < b) {
    return -1;
  } else if (a > b) {
    return +1;
  }
  return 0;
}
