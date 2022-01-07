
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct counter {int type; } ;


 int counter_serialize_raw (struct counter*,char*) ;
 struct counter* get_counter_old (long long,int,int) ;

int get_counter_serialized_raw (char *buffer, long long counter_id, int version) {

  struct counter *C = get_counter_old (counter_id, version, 1);
  if (!C) { return 0; }
  if (C->type == -2) return -2;
  return counter_serialize_raw (C, buffer);
}
