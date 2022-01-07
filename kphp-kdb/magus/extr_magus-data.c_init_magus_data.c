
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int magus_replay_logevent ;
 int replay_logevent ;

int init_magus_data (int schema) {
  replay_logevent = magus_replay_logevent;
  return 0;
}
