
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int message ;


 int dl_signal (int const,int ) ;
 int kwrite (int,char const*,int) ;
 int sigterm_immediate_handler ;
 int turn_sigterm_on () ;

__attribute__((used)) static void sigterm_handler (const int sig) {
  const char message[] = "SIGTERM handled.\n";
  kwrite (2, message, sizeof (message) - (size_t)1);


  turn_sigterm_on();
  dl_signal (sig, sigterm_immediate_handler);
}
