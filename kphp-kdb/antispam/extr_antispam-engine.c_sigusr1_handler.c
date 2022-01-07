
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int message ;


 int SIGUSR1 ;
 int kwrite (int,char const*,int) ;
 int reopen_logs () ;
 int signal (int ,void (*) (int const)) ;
 int sync_binlog (int) ;

__attribute__((used)) static void sigusr1_handler (const int sig) {
  const char message[] = "got SIGUSR1, rotate logs.\n";
  kwrite (2, message, sizeof (message) - (size_t)1);

  reopen_logs();
  sync_binlog (2);
  signal (SIGUSR1, sigusr1_handler);
}
