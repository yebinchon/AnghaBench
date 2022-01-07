
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int tcp_maximize_buffers ;
 int udp_enabled ;

int f_parse_function (int val) {
  switch (val) {
  case 'Q':
    tcp_maximize_buffers = 1;
    break;
  case 'U':
    udp_enabled ++;
    break;
  default:
    return -1;
  }
  return 0;
}
