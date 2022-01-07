
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int user_t ;


 int * get_user_f (int) ;
 long strlen (char const*) ;
 int update_history_extended (int *,char const*,long,int) ;

int do_update_history_extended (int user_id, const char *string, long len, int op) {
  if (op < 100 || op >= 200 || !string) {
    return -1;
  }
  if (len < 0) {
    len = strlen (string);
  }
  if (len & (-1 << 16)) {
    return -1;
  }
  user_t *U = get_user_f (user_id);
  if (!U) {
    return -1;
  }
  update_history_extended (U, string, len, op);
  return 1;
}
