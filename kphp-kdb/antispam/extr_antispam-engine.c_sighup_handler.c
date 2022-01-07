
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int message ;


 int SIGHUP ;
 int kwrite (int,char const*,int) ;
 int signal (int ,void (*) (int const)) ;
 int sync_binlog (int) ;

__attribute__((used)) static void sighup_handler (const int sig) {
  const char message[] = "got SIGHUP.\n";
  kwrite (2, message, sizeof (message) - (size_t)1);

  sync_binlog (2);
  signal (SIGHUP, sighup_handler);
}
