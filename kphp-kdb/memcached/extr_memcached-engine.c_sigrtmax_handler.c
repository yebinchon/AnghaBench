
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int message ;


 int force_write_stats ;
 int kwrite (int,char const*,int) ;

__attribute__((used)) static void sigrtmax_handler (const int sig) {
  const char message[] = "got SIGUSR3, write stats.\n";
  kwrite (2, message, sizeof (message) - (size_t)1);

  force_write_stats = 1;
}
