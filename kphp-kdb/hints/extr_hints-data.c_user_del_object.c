
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
 int chg_list_add_string (int *,int *,int,int,int *) ;
 scalar_t__ no_changes ;
 scalar_t__ write_only ;

int user_del_object (user *u, int type, long long object_id, int force) {
  if (!check_type (type) || !check_object_id (object_id)) {
    return 0;
  }
  if (!force) {
    if (write_only || no_changes) {
      return 1;
    }
  }


  chg_list_add_string (&u->chg_list_st, &u->chg_list_en, -type, (int)object_id, ((void*)0));
  changes_count++;

  return 1;
}
