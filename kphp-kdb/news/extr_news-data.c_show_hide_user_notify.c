
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int userplace_t ;


 int * get_userplace_f (int,int,int,int,int ) ;
 scalar_t__ min_logevent_time ;
 scalar_t__ now ;
 int show_hide_notify_userplace (int *,int ,int ,int,int) ;
 scalar_t__ time (int ) ;
 int vkprintf (int,char*,int,int,int,int,int,double) ;

__attribute__((used)) static int show_hide_user_notify (int user_id, int type, int owner, int place, int item, int shown) {
  vkprintf (4, "show_hide_user_notify: type = %d, owner = %d, place = %d, item = %d, shown = %d, time = %lf\n", type, owner, place, item, shown, (double)time (0));
  if (now < min_logevent_time) {
    return 0;
  }
  userplace_t *up = get_userplace_f (type, owner, place, user_id, 0);
  if (!up) {
    return 0;
  }
  return show_hide_notify_userplace (up, 0, 0, item, shown);
}
