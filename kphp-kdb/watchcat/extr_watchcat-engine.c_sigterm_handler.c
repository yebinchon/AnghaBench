
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int message ;


 int EXIT_SUCCESS ;
 int exit (int ) ;
 int free_all () ;
 int kwrite (int,char const*,int) ;

__attribute__((used)) static void sigterm_handler (const int sig) {
  const char message[] = "SIGTERM handled.\n";
  kwrite (2, message, sizeof (message) - (size_t)1);

  free_all();
  exit (EXIT_SUCCESS);
}
