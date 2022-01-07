
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {scalar_t__ st_size; } ;


 scalar_t__ aux_log_readto_pos ;
 int copyexec_aux_replay_binlog (scalar_t__,int ) ;
 int exec_transaction ;
 int fd_aux_binlog ;
 scalar_t__ fstat (int ,struct stat*) ;

__attribute__((used)) static void aux_binlog_check_updates (void) {
  struct stat st;
  if (fstat (fd_aux_binlog, &st) >= 0 && st.st_size > aux_log_readto_pos) {
    copyexec_aux_replay_binlog (aux_log_readto_pos, exec_transaction);
  }
}
