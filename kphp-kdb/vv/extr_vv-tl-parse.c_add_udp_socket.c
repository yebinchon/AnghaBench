
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert (int ) ;
 int backlog ;
 int default_udp_socket ;
 int exit (int) ;
 int fprintf (int ,char*) ;
 int init_udp_port (scalar_t__,int,int *,int *,int) ;
 scalar_t__ server_socket (int,int ,int ,int) ;
 int settings_addr ;
 int stderr ;
 int tl_udp_server ;
 int tl_udp_server_methods ;
 scalar_t__ usfd ;

void add_udp_socket (int port, int mode) {
  if (!usfd) {
    usfd = server_socket (port, settings_addr, backlog, mode + 1);
    if (usfd < 0) {
      fprintf (stderr, "cannot open udp port: %m\n");
      exit (1);
    }
  }
  assert ((default_udp_socket = init_udp_port (usfd, port, &tl_udp_server, &tl_udp_server_methods, 1 + mode)));
}
