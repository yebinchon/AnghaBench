
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fprintf (int ,char*) ;
 int stderr ;

int init_support_data (int schema) {
  fprintf (stderr, "sorry, SUPPORT_SCHEMA module is not loaded.\n");
  return -1;
}
