
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int kprintf (char*) ;

int disallow_save_index (int writing_binlog) {
  kprintf ("Writing index without counters ([-D 16] command line mode) is forbidden. Run cache-engine with [-A] option for allowing this action.\n");
  return -1;
}
