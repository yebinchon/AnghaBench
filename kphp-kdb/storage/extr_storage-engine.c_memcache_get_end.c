
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct connection {scalar_t__ pending_queries; int Out; int status; int flags; } ;


 int C_INTIMEOUT ;
 int conn_wait_aio ;
 int set_connection_timeout (struct connection*,double) ;
 int vkprintf (int,char*,struct connection*,int) ;
 int write_out (int *,char*,int) ;

int memcache_get_end (struct connection *c, int key_count) {
  c->flags &= ~C_INTIMEOUT;
  vkprintf (3, "memcache_get_end (%p, %d)\n" , c, key_count);
  if (c->pending_queries > 0) {
    c->status = conn_wait_aio;
    set_connection_timeout (c, 3.0);
    return 0;
  }
  write_out (&c->Out, "END\r\n", 5);
  return 0;
}
