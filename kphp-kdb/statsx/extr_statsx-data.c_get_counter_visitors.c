
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct counter {int type; int unique_visitors; } ;


 struct counter* get_counter_old (long long,int ,int) ;

int get_counter_visitors (long long counter_id) {
  struct counter *C = get_counter_old (counter_id, 0, 1);
  if (!C) { return -1;}
  if (C->type == -2) { return -2;}
  return C->unique_visitors;
}
