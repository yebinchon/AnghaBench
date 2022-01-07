
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int aux_log_read_start ;
 int aux_log_readto_pos ;
 int get_aux_binlog_jump_log_pos (int *) ;
 int transactions ;
 int vkprintf (int,char*,int ,int ) ;

void copyexec_aux_binlog_seek (void) {
  get_aux_binlog_jump_log_pos (&aux_log_read_start);
  vkprintf (3, "after get_aux_binlog_jump_log_pos: aux_log_readto_start = %lld, transactions = %d\n", aux_log_read_start, transactions);
  aux_log_readto_pos = aux_log_read_start;
}
