
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SIGUSR2 ;
 int fprintf (int ,char*) ;
 int need_reload_config ;
 int signal (int ,void (*) (int const)) ;
 int stderr ;
 scalar_t__ verbosity ;

__attribute__((used)) static void sigusr2_handler (const int sig) {
  if (verbosity > 0) {
    fprintf (stderr, "got SIGUSR2, config reload scheduled.\n");
  }
  need_reload_config++;
  signal (SIGUSR2, sigusr2_handler);
}
