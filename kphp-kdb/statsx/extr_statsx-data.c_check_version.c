
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct counter {int created_at; struct counter* prev; } ;


 struct counter* get_counter_f (long long,int ) ;

int check_version (long long counter_id, int version) {
  struct counter *C = get_counter_f (counter_id, 0);
  while (C) {
    if (C->created_at < version) { return 0; }
    if (C->created_at == version) { return 1; }
    C = C->prev;
  }
  return -1;
}
