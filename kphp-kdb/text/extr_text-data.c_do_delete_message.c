
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lev_del_message {int local_id; } ;


 int LEV_TX_DEL_MESSAGE ;
 int adjust_message (int,int,int,int,int ) ;
 struct lev_del_message* alloc_log_event (int ,int,int) ;
 int fprintf (int ,char*,int,...) ;
 int stderr ;
 int verbosity ;
 scalar_t__ write_all_events ;

int do_delete_message (int user_id, int local_id) {
  if (verbosity > 1) {
    fprintf (stderr, "do_delete_message(%d,%d):\n", user_id, local_id);
  }
  int res = adjust_message (user_id, local_id, -1, -1, 0);
  if (verbosity > 1) {
    fprintf (stderr, "adjust_message returned %d\n", res);
  }
  if (res < 0) {
    return res;
  }
  if ((res & 1) || write_all_events) {
    struct lev_del_message *E = alloc_log_event (LEV_TX_DEL_MESSAGE, sizeof (struct lev_del_message), user_id);
    E->local_id = local_id;
  }
  return res & 1;
}
