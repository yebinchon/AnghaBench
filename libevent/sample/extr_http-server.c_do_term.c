
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct event_base {int dummy; } ;


 int event_base_loopbreak (struct event_base*) ;
 int fprintf (int ,char*,int) ;
 int stderr ;

__attribute__((used)) static void
do_term(int sig, short events, void *arg)
{
 struct event_base *base = arg;
 event_base_loopbreak(base);
 fprintf(stderr, "Got %i, Terminating\n", sig);
}
