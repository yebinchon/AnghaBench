
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int force_write_index ;
 int fprintf (int ,char*) ;
 int stderr ;

__attribute__((used)) static void sigrtmax_handler (const int sig) {
  fprintf (stderr, "got SIGUSR3, write index.\n");
  force_write_index = 1;
}
