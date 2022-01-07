
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct counter {int timezone; } ;


 struct counter* get_counter_f (long long,int ) ;

int get_timezone (long long counter_id) {
  struct counter *C = get_counter_f (counter_id, 0);
  if (!C) { return 0; }
  return C->timezone;
}
