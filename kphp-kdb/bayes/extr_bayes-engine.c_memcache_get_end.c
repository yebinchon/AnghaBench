
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct connection {int last_query_time; int query_start_time; int Out; int flags; } ;


 int C_INTIMEOUT ;
 int fprintf (int ,char*,int) ;
 int mytime () ;
 int stderr ;
 int verbosity ;
 int write_out (int *,char*,int) ;

int memcache_get_end (struct connection *c, int key_count) {
  c->flags &= ~C_INTIMEOUT;
  c->last_query_time = mytime() - c->query_start_time;
  write_out (&c->Out, "END\r\n", 5);
  if (verbosity > 1) {
    fprintf (stderr, "memcache_get end: query time %.3fms\n", c->last_query_time * 1000);
  }
  return 0;
}
