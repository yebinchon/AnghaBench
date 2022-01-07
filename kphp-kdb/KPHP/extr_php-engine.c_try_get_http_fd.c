
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int backlog ;
 int http_port ;
 int server_socket (int ,int ,int ,int ) ;
 int settings_addr ;

int try_get_http_fd () {
  return server_socket (http_port, settings_addr, backlog, 0);
}
