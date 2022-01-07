
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int replay_logevent ;
 int support_replay_logevent ;

int init_support_data (int schema) {
  replay_logevent = support_replay_logevent;
  return 0;
}
