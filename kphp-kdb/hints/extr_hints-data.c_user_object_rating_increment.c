
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int chg_list_en; int chg_list_st; } ;
typedef TYPE_1__ user ;


 int changes_count ;
 int check_object_id (long long) ;
 int check_rating (int) ;
 int check_rating_num (int) ;
 int chg_list_add_int (int *,int *,unsigned char,int,int) ;
 scalar_t__ no_changes ;
 scalar_t__ write_only ;

int user_object_rating_increment (user *u, unsigned char object_type, long long object_id, int cnt, int num) {
  if (!check_rating (cnt) || object_type == 0 || !check_object_id (object_id) || !check_rating_num (num)) {
    return 0;
  }

  if (write_only || no_changes) {
    return 1;
  }

  chg_list_add_int (&u->chg_list_st, &u->chg_list_en, +(object_type + 256 * num), -(int)(object_id), cnt);
  changes_count++;

  return 1;
}
