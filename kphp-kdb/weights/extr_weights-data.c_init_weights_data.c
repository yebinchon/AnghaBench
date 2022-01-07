
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int init_amortization_tables () ;
 int replay_logevent ;
 int weights_hash_init () ;
 int weights_replay_logevent ;

int init_weights_data (int schema) {
  replay_logevent = weights_replay_logevent;
  init_amortization_tables ();
  weights_hash_init ();
  return 0;
}
