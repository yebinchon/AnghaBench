
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ value_t ;
struct heap_entry {scalar_t__ value; int global_id; } ;
typedef int global_id_t ;



int cmp_value_asc_global_desc (struct heap_entry *p, value_t value, global_id_t global_id) {
  if (p->value < value) {
    return -1;
  } else if (p->value > value) {
    return 1;
  } else {
    return global_id - p->global_id;
  }
}
