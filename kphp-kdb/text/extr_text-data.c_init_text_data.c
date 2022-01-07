
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int count_sublists () ;
 int replay_logevent ;
 int text_replay_logevent ;

int init_text_data (int schema) {

  count_sublists();

  replay_logevent = text_replay_logevent;

  return 0;
}
