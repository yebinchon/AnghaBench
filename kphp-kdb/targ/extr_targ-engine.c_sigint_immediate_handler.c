
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int) ;
 int fprintf (int ,char*) ;
 int stderr ;

__attribute__((used)) static void sigint_immediate_handler (const int sig) {
  fprintf (stderr, "SIGINT handled immediately.\n");
  exit (1);
}
