
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int kprintf (char*) ;

int write_index (int writing_binlog) {
  kprintf ("fatal: cannot write index\n");
  return -1;
}
