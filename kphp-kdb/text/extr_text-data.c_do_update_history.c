
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int user_t ;


 int * get_user_f (int) ;
 int update_history (int *,int,int,int) ;

int do_update_history (int user_id, int local_id, int flags, int op) {
  if (op < 50 || op >= 100 || flags & ~0xffff) {
    return -1;
  }
  user_t *U = get_user_f (user_id);
  if (!U) {
    return -1;
  }
  update_history (U, local_id, flags, op);
  return 1;
}
