
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lev_copyexec_main_command_begin {int transaction_id; int command_id; int pid; char* command_size; int data; } ;


 scalar_t__ dump_line_header (char*) ;
 int fprintf (int ,char*,int,int,int,char*,int ) ;
 int out ;

void dump_command_begin (struct lev_copyexec_main_command_begin *E) {
  if (dump_line_header ("LEV_COPYEXEC_MAIN_COMMAND_BEGIN")) {
    return;
  }
  fprintf (out, "%d\t%d\t%d\t%.*s\n", E->transaction_id, E->command_id, E->pid, E->command_size, E->data);
}
