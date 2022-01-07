
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct connection {int Out; } ;


 int fprintf (int ,char*,int,char const*,long long) ;
 int stderr ;
 int verbosity ;
 int write_out (int *,char*,int) ;

int memcache_incr (struct connection *c, int op, const char *key, int key_len, long long arg) {
  if (verbosity > 1) {
    fprintf (stderr, "memcache_incr: op=%d, key='%s', val=%lld\n", op, key, arg);
  }

  write_out (&c->Out, "NOT_FOUND\r\n", 11);
  return 0;
}
