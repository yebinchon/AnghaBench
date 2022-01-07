
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct connection {int dummy; } ;
typedef int message ;


 int BYS_MSG (struct connection*) ;
 int fprintf (int ,char*) ;
 int mcs_init_accepted (struct connection*) ;
 int memset (int ,int ,int) ;
 int stderr ;
 int verbosity ;

int bayes_engine_init_accepted (struct connection *c) {
  if (verbosity > 1) {
    fprintf (stderr, "bayes_engine_init_accepted\n");
  }
  memset (BYS_MSG (c), 0, sizeof (message));
  return mcs_init_accepted (c);
}
