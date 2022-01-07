
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lev_copyexec_aux_transaction_cmd_file {int dummy; } ;


 int cur_transaction_result ;
 int unpack_file (struct lev_copyexec_aux_transaction_cmd_file*) ;
 int unpack_filename_buff ;
 int write_transaction_err_logevent (char*,int ,int) ;

__attribute__((used)) static int do_file (struct lev_copyexec_aux_transaction_cmd_file *E) {
  int r = unpack_file (E);
  if (r < 0) {
    write_transaction_err_logevent ("unpack_file (%s) failed at the line %d", unpack_filename_buff, -r);
    cur_transaction_result = 0x00ff;

  }
  return r;
}
