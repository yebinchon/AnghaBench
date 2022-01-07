
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct connection {int dummy; } ;


 int WaitAioArrClear () ;
 int fprintf (int ,char*,char const*) ;
 int memcache_get_nonblock (struct connection*,char const*,int) ;
 int memcache_wait (struct connection*,char const*,int) ;
 int stderr ;
 int verbosity ;

int memcache_get (struct connection *c, const char *key, int key_len) {
  if (verbosity > 1) {
    fprintf (stderr, "memcache_get: key='%s'\n", key);
  }

  WaitAioArrClear ();

  int res = memcache_get_nonblock (c, key, key_len);

  if (res == -2) {
    return memcache_wait (c, key, key_len);
  }

  return res;
}
