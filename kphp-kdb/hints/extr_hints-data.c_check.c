
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int object_old_n; int object_table; } ;
typedef TYPE_1__ user ;


 int assert (int) ;
 int ltbl_get_rev (int *,int) ;

inline void check (user *u, int local_id) {
  assert (local_id > 0);
  if (local_id > u->object_old_n) {
    assert (ltbl_get_rev (&u->object_table, local_id - u->object_old_n));
  }
}
