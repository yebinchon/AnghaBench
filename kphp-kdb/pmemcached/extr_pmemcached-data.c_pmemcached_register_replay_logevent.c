
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int pmemcached_replay_logevent ;
 int replay_logevent ;

void pmemcached_register_replay_logevent () {
  replay_logevent = pmemcached_replay_logevent;
}
