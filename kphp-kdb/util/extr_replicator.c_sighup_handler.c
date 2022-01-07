
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int message ;


 int SIGHUP ;
 int kwrite (int,char const*,int) ;
 int sighup_cnt ;
 int signal (int ,void (*) (int const)) ;

__attribute__((used)) static void sighup_handler (const int sig) {
  static const char message[] = "got SIGHUP.\n";
  kwrite (2, message, sizeof (message) - (size_t)1);
  sighup_cnt++;
  signal (SIGHUP, sighup_handler);
}
