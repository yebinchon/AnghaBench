
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int replay_logevent ;
 int seqmap_replay_logevent ;

int init_seqmap_data (int schema) {
  replay_logevent = seqmap_replay_logevent;
  return 0;
}
