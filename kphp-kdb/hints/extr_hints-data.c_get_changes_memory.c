
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 long changes_memory ;
 long chg_list_get_memory () ;

long get_changes_memory (void) {
  return changes_memory + chg_list_get_memory();
}
