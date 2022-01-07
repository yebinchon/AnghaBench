
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int* tid; } ;
typedef TYPE_1__ tftp_connection_t ;


 int assert (int) ;
 int enable_ipv6 ;
 TYPE_1__* get_connection_f (int,int) ;
 int open_udp_server_socket (int) ;
 int tftp_init_udp_port (TYPE_1__*,int,int,int *,int ,int ) ;
 int ut_tftp_server ;
 size_t working_mode ;

int tftp_init_listening_connection (int port, int udp_sfd) {
  tftp_connection_t *c = get_connection_f (port, 1);
  c->tid[working_mode] = port;
  if (udp_sfd < 0) {
    udp_sfd = open_udp_server_socket (port);
    if (udp_sfd < 0) {
      return -1;
    }
  }
  assert (!tftp_init_udp_port (c, udp_sfd, port, &ut_tftp_server, 0, enable_ipv6));
  return 0;
}
