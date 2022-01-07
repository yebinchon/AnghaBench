
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lev_copyexec_main_transaction_err {int transaction_id; char* error_msg_size; int data; } ;


 scalar_t__ dump_line_header (char*) ;
 int fprintf (int ,char*,int,char*,int ) ;
 int out ;

void dump_transaction_err (struct lev_copyexec_main_transaction_err *E) {
  if (dump_line_header ("LEV_COPYEXEC_MAIN_TRANSACTION_ERR")) {
    return;
  }
  fprintf (out, "%d\t%.*s\n", E->transaction_id, E->error_msg_size, E->data);
}
