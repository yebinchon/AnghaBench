
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lev_generic {int dummy; } ;


 scalar_t__ LEV_TARG_USER_HASPHOTO ;
 struct lev_generic* alloc_log_event (scalar_t__,int,int) ;
 int get_user (int) ;
 int set_has_photo (struct lev_generic*) ;

int do_set_has_photo (int user_id, int flags) {
  if ((flags & (-1 << 24)) || !get_user (user_id)) {
    return 0;
  }
  struct lev_generic *E = alloc_log_event (LEV_TARG_USER_HASPHOTO + (flags & 0xff), 8, user_id);
  return set_has_photo (E);
}
