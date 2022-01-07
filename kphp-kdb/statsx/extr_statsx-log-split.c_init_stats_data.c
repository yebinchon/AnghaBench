
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int replay_logevent ;
 int statsx_replay_logevent ;

int init_stats_data (int schema) {

  replay_logevent = statsx_replay_logevent;

  return 0;
}
