
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;
struct binder_transaction_log_entry {int call_type; int debug_id_done; int return_error_line; int return_error_param; int return_error; int offsets_size; int data_size; int target_handle; int to_node; int context_name; int to_thread; int to_proc; int from_thread; int from_proc; int debug_id; } ;


 int READ_ONCE (int ) ;
 int seq_printf (struct seq_file*,char*,...) ;
 int smp_rmb () ;

__attribute__((used)) static void print_binder_transaction_log_entry(struct seq_file *m,
     struct binder_transaction_log_entry *e)
{
 int debug_id = READ_ONCE(e->debug_id_done);




 smp_rmb();
 seq_printf(m,
     "%d: %s from %d:%d to %d:%d context %s node %d handle %d size %d:%d ret %d/%d l=%d",
     e->debug_id, (e->call_type == 2) ? "reply" :
     ((e->call_type == 1) ? "async" : "call "), e->from_proc,
     e->from_thread, e->to_proc, e->to_thread, e->context_name,
     e->to_node, e->target_handle, e->data_size, e->offsets_size,
     e->return_error, e->return_error_param,
     e->return_error_line);




 smp_rmb();
 seq_printf(m, debug_id && debug_id == READ_ONCE(e->debug_id_done) ?
   "\n" : " (incomplete)\n");
}
