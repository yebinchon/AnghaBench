
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lev_copyexec_result_data {int result; int binlog_pos; int transaction_id; int random_tag; } ;


 scalar_t__ dump_line_header (char*) ;
 int dump_result (int,int) ;
 int dump_ts (int) ;
 int fprintf (int ,char*,...) ;
 int out ;

__attribute__((used)) static void dump_data (struct lev_copyexec_result_data *E) {
  if (dump_line_header ("LEV_COPYEXEC_RESULT_DATA")) {
    return;
  }
  fprintf (out, "0x%llx\t%d\t", E->random_tag, E->transaction_id);
  int status = E->result >> 28, result = E->result & 0x0fffffff;
  dump_ts (status);
  fprintf (out, "\t");
  dump_result (status, result);
  fprintf (out, "\t%lld\n", E->binlog_pos);
}
