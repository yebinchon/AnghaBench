
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int message ;


 int kwrite (int,char const*,int) ;
 int sigusr2_cnt ;

__attribute__((used)) static void sigusr2_handler (const int sig) {
  static const char message[] = "got SIGUSR2.\n";
  kwrite (2, message, sizeof (message) - (size_t) 1);
  sigusr2_cnt++;
}
