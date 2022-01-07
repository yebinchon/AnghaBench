
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct connection {int Out; int flags; } ;


 int C_INTIMEOUT ;
 int free_tmp_buffers (struct connection*) ;
 int vkprintf (int,char*,int) ;
 int write_out (int *,char*,int) ;

int pmemcached_get_end (struct connection *c, int key_count) {
  c->flags &= ~C_INTIMEOUT;
  vkprintf (1, "memcache_get_end: %d keys requested\n", key_count);
  write_out (&c->Out, "END\r\n", 5);
  free_tmp_buffers (c);
  return 0;
}
