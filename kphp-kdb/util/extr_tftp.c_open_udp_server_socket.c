
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct in_addr {int dummy; } ;


 scalar_t__ SM_UDP ;
 int backlog ;
 scalar_t__ enable_ipv6 ;
 int server_socket (int,struct in_addr,int ,scalar_t__) ;

__attribute__((used)) static int open_udp_server_socket (int port) {
  static struct in_addr settings_addr;
  return server_socket (port, settings_addr, backlog, SM_UDP + enable_ipv6);
}
