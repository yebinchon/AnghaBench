
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int conn_type_t ;


 int init_listening_connection_ext (int,int *,void*,int,int) ;

int init_listening_tcpv6_connection (int fd, conn_type_t *type, void *extra, int mode) {
  return init_listening_connection_ext (fd, type, extra, mode, -10);
}
