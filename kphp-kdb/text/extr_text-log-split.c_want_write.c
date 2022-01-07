
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lev_set_flags {int user_id; } ;
 int copy_mod ;
 int copy_rem ;
 int jump_log_pos ;
 int targ_existed ;

__attribute__((used)) static int want_write (int type, void *rec) {
  int user_id = 0;

  switch (type) {
  case 129:
    return !targ_existed++ && !jump_log_pos;
  case 132:
    return 0;
  case 128:
  case 133:
  case 130:
  case 131:
    return 0;
  case 134:
    return 1;
  default:
    user_id = ((struct lev_set_flags *) rec)->user_id;
  }
  user_id %= copy_mod;
  if (user_id == copy_rem || user_id == -copy_rem) {
    return 1;
  }
  return 0;
}
