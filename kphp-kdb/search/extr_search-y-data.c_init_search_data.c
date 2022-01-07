
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int replay_logevent ;
 int searchy_replay_logevent ;

int init_search_data (int schema) {
  replay_logevent = searchy_replay_logevent;
  return 0;
}
