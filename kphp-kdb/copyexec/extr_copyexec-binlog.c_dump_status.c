
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lev_copyexec_main_transaction_status {int type; int transaction_id; int st_ino; int st_dev; int result; int creation_time; int pid; int mask; int binlog_pos; } ;


 scalar_t__ dump_line_header (char*) ;
 int dump_result (int,int ) ;
 int dump_ts (int) ;
 int fprintf (int ,char*,int,int ,...) ;
 int out ;

void dump_status (struct lev_copyexec_main_transaction_status *E) {
  int status = E->type & 255;
  if (dump_line_header ("LEV_COPYEXEC_MAIN_TRANSACTION_STATUS")) {
    return;
  }
  dump_ts (E->type);
  fprintf (out, "\t%d\t%lld\t0x%x\t%d\t%d\t", E->transaction_id, E->binlog_pos, E->mask, E->pid, E->creation_time);
  dump_result (status, E->result);
  fprintf (out, "\t%lld\t%lld\n", E->st_dev, E->st_ino);
}
