
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int dump_copyexec_results_replay_logevent ;
 int replay_logevent ;

int init_copyexec_result_data (int schema) {
  replay_logevent = dump_copyexec_results_replay_logevent;
  return 0;
}
