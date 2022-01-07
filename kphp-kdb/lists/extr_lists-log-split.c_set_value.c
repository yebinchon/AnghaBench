
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t new_entry_value_offset ;

void set_value (void *rec, int new_value) {
  int *a = rec;
  a[new_entry_value_offset] = new_value;
}
