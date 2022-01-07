
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct counter {int type; int views; } ;


 struct counter* get_counter_old (long long,int,int) ;

int get_counter_views_given_version (long long counter_id, int version) {
  struct counter *C = get_counter_old (counter_id, version, 1);
  if (!C) { return -1;}
  if (C->type == -2) { return -2;}
  return C->views;
}
