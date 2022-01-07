
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int O_RDONLY ;
 int fd_aux_binlog ;
 int kprintf (char*,char const* const) ;
 int open (char const* const,int ) ;

int copyexec_aux_binlog_readonly_open (const char *const aux_binlog_name) {
  if (aux_binlog_name == ((void*)0) || (fd_aux_binlog = open (aux_binlog_name, O_RDONLY)) < 0) {
    kprintf ("Couldn't open aux binlog \"%s\" in read only mode. %m\n", aux_binlog_name);
    return -1;
  }

  return 0;
}
