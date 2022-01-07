
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int replay_logevent ;
 int rpc_proxy_replay_logevent ;

int init_rpc_proxy_data (int schema) {
  replay_logevent = rpc_proxy_replay_logevent;
  return 0;
}
