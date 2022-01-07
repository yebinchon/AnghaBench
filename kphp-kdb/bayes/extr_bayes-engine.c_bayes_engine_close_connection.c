
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct connection {int dummy; } ;


 int BYS_MSG (struct connection*) ;
 int fprintf (int ,char*) ;
 int msg_free (int ) ;
 int server_close_connection (struct connection*,int) ;
 int stderr ;
 int verbosity ;

int bayes_engine_close_connection (struct connection *c, int who) {
  if (verbosity > 1) {
    fprintf (stderr, "bayes_engine_close_connection\n");
  }
  msg_free (BYS_MSG (c));

  return server_close_connection (c, who);
}
