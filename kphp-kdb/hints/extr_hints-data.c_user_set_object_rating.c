
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int chg_list_en; int chg_list_st; } ;
typedef TYPE_1__ user ;
typedef int rating ;


 int MAX_RATING_NUM ;
 int changes_count ;
 int check_object_id (long long) ;
 int check_rating (int) ;
 int check_rating_num (int) ;
 int check_type (unsigned char) ;
 int chg_list_add_rating (int *,int *,unsigned char,int,int) ;
 scalar_t__ no_changes ;
 int now ;
 scalar_t__ write_only ;

int user_set_object_rating (user *u, unsigned char object_type, long long object_id, rating val, int num) {
  if (!check_rating (val) || !check_type (object_type) || !check_object_id (object_id) || !check_rating_num (num)) {
    return 0;
  }
  if (write_only || no_changes) {
    return 1;
  }

  if (1333411200 <= now && now <= 1334016000 && val > 1e-3 && object_type == 21 && num == 0) {
    return 1;
  }

  chg_list_add_rating (&u->chg_list_st, &u->chg_list_en, + (object_type + 256 * num + 256 * MAX_RATING_NUM), -(int)(object_id), val);
  changes_count++;

  return 1;
}
