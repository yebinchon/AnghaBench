
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct lev_copyexec_result_data {scalar_t__ random_tag; scalar_t__ binlog_pos; int result; int transaction_id; } ;
struct TYPE_5__ {scalar_t__ random_tag; scalar_t__ binlog_pos; void* last_action_time; void* last_data_time; void* first_data_time; } ;
typedef TYPE_1__ host_t ;


 int assert (int) ;
 int exit (int) ;
 TYPE_1__* get_host_by_random_tag (scalar_t__,int ) ;
 int kprintf (char*,scalar_t__,scalar_t__,...) ;
 int log_cur_pos () ;
 void* now ;
 int transaction_set_result (TYPE_1__*,int ,int ) ;

__attribute__((used)) static int set_result (host_t *H, struct lev_copyexec_result_data *E) {
  if (H == ((void*)0)) {
    H = get_host_by_random_tag (E->random_tag, 0);
    if (H == ((void*)0)) {
      kprintf ("set_result: get_host_by_random_tag (0x%llx) returns NULL. (log_cur_pos: %lld)\n", E->random_tag, log_cur_pos ());
      exit (1);
    }
  }
  assert (H->random_tag == E->random_tag);
  if (H->binlog_pos >= E->binlog_pos) {
    kprintf ("set_result: H->binlog_pos >= E->binlog_pos, H->binlog_pos = 0x%llx, E->binlog_pos = 0x%llx. (log_cur_pos: %lld)\n", H->binlog_pos, E->binlog_pos, log_cur_pos ());
    exit (1);
    return -1;
  }
  H->binlog_pos = E->binlog_pos;
  if (!H->first_data_time) {
    H->first_data_time = now;
  }
  H->last_data_time = H->last_action_time = now;
  return transaction_set_result (H, E->transaction_id, E->result);
}
