
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int isearch_replay_logevent ;
 int replay_logevent ;

int init_isearch_data (int schema) {
  replay_logevent = isearch_replay_logevent;
  return 0;
}
