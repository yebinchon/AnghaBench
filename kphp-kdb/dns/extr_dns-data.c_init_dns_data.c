
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int dns_replay_logevent ;
 int replay_logevent ;

int init_dns_data (int schema) {
  replay_logevent = dns_replay_logevent;
  return 0;
}
