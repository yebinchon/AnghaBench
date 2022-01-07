
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int kprintf (char*,int,int) ;
 int usage () ;

void add_action (int *act, int i) {
  if (*act) {
    kprintf ("You give two different actions: '%c' and '%c'.\n", *act, i);
    usage ();
  }
  *act = i;
}
