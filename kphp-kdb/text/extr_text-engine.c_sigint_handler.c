
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SIGINT ;
 int fprintf (int ,char*) ;
 int pending_signals ;
 int sigint_immediate_handler ;
 int signal (int,int ) ;
 int stderr ;

__attribute__((used)) static void sigint_handler (const int sig) {
  fprintf (stderr, "SIGINT handled.\n");
  pending_signals |= (1 << SIGINT);
  signal(SIGINT, sigint_immediate_handler);
}
