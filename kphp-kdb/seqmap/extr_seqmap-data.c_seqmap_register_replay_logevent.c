
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int replay_logevent ;
 int seqmap_replay_logevent ;

void seqmap_register_replay_logevent () {
  replay_logevent = seqmap_replay_logevent;
}
