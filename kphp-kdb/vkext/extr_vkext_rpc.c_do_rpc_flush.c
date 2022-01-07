
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ do_rpc_flush_server (int ,double) ;
 int last_server_fd ;
 int * servers ;

int do_rpc_flush (double timeout) {
  int i;
  int bad = 0;
  for (i = 0; i < last_server_fd; i++) {
    if (do_rpc_flush_server (servers[i], timeout) < 0) {
      bad ++;
    }
  }
  return -bad;
}
