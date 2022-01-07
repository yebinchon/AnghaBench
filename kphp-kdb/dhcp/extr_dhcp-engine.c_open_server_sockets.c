
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ DEBUG_UDPDUMP ;
 scalar_t__ debug_mode ;
 scalar_t__ open_udp_socket (int) ;
 int port ;
 scalar_t__ udp_sfd ;
 scalar_t__ udp_sfd2 ;

void open_server_sockets (void) {
  if (udp_sfd < 0) {
    udp_sfd = open_udp_socket (port);
  }
  if (debug_mode == DEBUG_UDPDUMP) {
    if (udp_sfd2 < 0) {
      udp_sfd2 = open_udp_socket (68);
    }
  }
}
