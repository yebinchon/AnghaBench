
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EXIT_SUCCESS ;
 int exit (int ) ;
 int kprintf (char*) ;

__attribute__((used)) static void sigterm_handler (const int sig) {
  kprintf ("SIGTERM handled.\n");
  exit (EXIT_SUCCESS);
}
