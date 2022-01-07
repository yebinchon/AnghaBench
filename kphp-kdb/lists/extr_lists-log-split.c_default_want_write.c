
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lev_del_list {int* list_id; } ;
 int abs (int) ;
 int copy_mod ;
 int copy_rem ;
 int jump_log_pos ;
 int split_mode ;
 int targ_existed ;

__attribute__((used)) static int default_want_write (int type, void *rec, int size) {
  int list_id = 0;
  switch (type) {
  case 131:
    return !targ_existed++ && !jump_log_pos;
  case 134:
    return 0;
  case 130:
  case 136:
  case 132:
  case 133:
    return 0;
  case 135:
    return 1;
  default: {
    switch (split_mode) {
    case 129:
      list_id = ((struct lev_del_list *) rec)->list_id[0];
      break;
    case 128:
      list_id = abs(((struct lev_del_list *) rec)->list_id[0]) + abs(((struct lev_del_list *) rec)->list_id[1]);
      break;
    }
  }
  }
  list_id %= copy_mod;
  if (list_id == copy_rem || list_id == -copy_rem) {
    return 1;
  }
  return 0;
}
