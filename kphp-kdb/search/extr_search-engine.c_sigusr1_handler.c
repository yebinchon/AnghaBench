
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int message ;


 int SIGUSR1 ;
 int kwrite (int,char const*,int) ;
 int signal (int ,void (*) (int const)) ;
 int sigusr1_cnt ;

__attribute__((used)) static void sigusr1_handler (const int sig) {
  static const char message[] = "got SIGUSR1.\n";
  kwrite (2, message, sizeof (message) - (size_t)1);
  sigusr1_cnt++;
  signal (SIGUSR1, sigusr1_handler);
}
