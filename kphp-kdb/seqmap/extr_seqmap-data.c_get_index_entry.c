
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct index_entry {int dummy; } ;


 int assert (int) ;
 int index_entries ;

struct index_entry *get_index_entry (int p) {
  assert (p >= 0 && p < index_entries);
  return 0;
}
