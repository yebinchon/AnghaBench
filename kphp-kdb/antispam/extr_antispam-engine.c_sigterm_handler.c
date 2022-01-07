
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int message ;


 int SIGTERM ;
 int kwrite (int,char const*,int) ;
 int pending_signals ;
 int signal (int,int ) ;
 int sigterm_immediate_handler ;

__attribute__((used)) static void sigterm_handler (const int sig) {
  const char message[] = "SIGTERM handled.\n";
  kwrite (2, message, sizeof (message) - (size_t)1);

  pending_signals |= (1 << SIGTERM);
  signal (SIGTERM, sigterm_immediate_handler);
}
