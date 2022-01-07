
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SIGTERM ;
 int fprintf (int ,char*) ;
 int pending_signals ;
 int signal (int,int ) ;
 int sigterm_immediate_handler ;
 int stderr ;

__attribute__((used)) static void sigterm_handler (const int sig) {
  fprintf (stderr, "SIGTERM handled.\n");
  pending_signals |= (1 << SIGTERM);
  signal(SIGTERM, sigterm_immediate_handler);
}
