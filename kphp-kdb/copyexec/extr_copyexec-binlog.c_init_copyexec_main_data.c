
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int dump_copyexec_main_replay_logevent ;
 int replay_logevent ;
 int vkprintf (int,char*) ;

int init_copyexec_main_data (int schema) {
  vkprintf (1, "init_copyexe_main_data\n");
  replay_logevent = dump_copyexec_main_replay_logevent;
  return 0;
}
