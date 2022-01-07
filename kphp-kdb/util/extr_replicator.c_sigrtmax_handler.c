
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int message ;


 int kwrite (int,char const*,int) ;
 int sigrtmax_cnt ;

__attribute__((used)) static void sigrtmax_handler (const int sig) {
  static const char message[] = "got SIGUSR3, incr update related binlog generation number.\n";
  kwrite (2, message, sizeof (message) - (size_t)1);
  sigrtmax_cnt++;
}
