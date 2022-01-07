
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lev_del_first_messages {int first_local_id; } ;


 int LEV_TX_DEL_FIRST_MESSAGES ;
 struct lev_del_first_messages* alloc_log_event (int ,int,int) ;
 int delete_first_messages (int,int) ;
 int fprintf (int ,char*,int,...) ;
 int stderr ;
 int verbosity ;

int do_delete_first_messages (int user_id, int first_local_id) {
  if (verbosity > 1) {
    fprintf (stderr, "do_delete_first_messages(%d,%d):\n", user_id, first_local_id);
  }
  int res = delete_first_messages (user_id, first_local_id);
  if (verbosity > 1) {
    fprintf (stderr, "delete_first_messages returned %d\n", res);
  }
  if (res <= 0) {
    return res;
  }
  if (res > 0) {
    struct lev_del_first_messages *E = alloc_log_event (LEV_TX_DEL_FIRST_MESSAGES, sizeof (struct lev_del_first_messages), user_id);
    E->first_local_id = res;
  }
  return 1;
}
