
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int uni_country; int uni_city; int uid; } ;
typedef TYPE_1__ user_t ;
struct lev_univcity {int uni_country; int uni_city; int user_id; } ;


 TYPE_1__* get_user (int ) ;
 int q_city ;
 int q_country ;
 int user_change_field (int ,int ,int,int) ;

void set_country_city (struct lev_univcity *E) {
  user_t *U = get_user (E->user_id);
  if (U && E->uni_country >= 0 && E->uni_country <= 255 && E->uni_city >= 0) {
    user_change_field (U->uid, q_country, U->uni_country, E->uni_country);
    user_change_field (U->uid, q_city, U->uni_city, E->uni_city);
    U->uni_country = E->uni_country;
    U->uni_city = E->uni_city;
  }
}
