
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct counter {int type; } ;


 scalar_t__ Q_raw ;
 int counter_serialize (struct counter*,char*) ;
 struct counter* get_counter_old (long long,int,int) ;
 int get_counter_serialized_raw (char*,long long,int) ;

int get_counter_serialized (char *buffer, long long counter_id, int version) {
  if (Q_raw) {
    return get_counter_serialized_raw (buffer, counter_id, version);
  }
  struct counter *C = get_counter_old (counter_id, version, 1);
  if (!C) { return 0; }
  if (C->type == -2) { return -2; }
  return counter_serialize (C, buffer);
}
