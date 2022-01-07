
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int chg_list_en; int chg_list_st; } ;
typedef TYPE_1__ user ;


 int changes_count ;
 int check_object_id (long long) ;
 int check_type (int) ;
 int chg_list_add_int (int *,int *,int,int,int) ;
 scalar_t__ no_changes ;
 scalar_t__ write_only ;

int user_set_object_type (user *u, int object_type, long long object_id, int new_object_type) {
  if (!check_type (object_type) || !check_type (new_object_type) || !check_object_id (object_id)) {
    return 0;
  }
  if (write_only || no_changes) {
    return 1;
  }

  chg_list_add_int (&u->chg_list_st, &u->chg_list_en, object_type + 256, (int)object_id, new_object_type);
  changes_count++;

  return 1;
}
