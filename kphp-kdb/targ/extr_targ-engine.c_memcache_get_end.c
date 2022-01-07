
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct connection {int Out; int flags; } ;


 int C_INTIMEOUT ;
 int free_tmp_buffers (struct connection*) ;
 int get_queries ;
 int verbosity ;
 int write_out (int *,char*,int) ;

int memcache_get_end (struct connection *c, int key_count) {
  c->flags &= ~C_INTIMEOUT;


  get_queries++;
  write_out (&c->Out, "END\r\n", 5);

  free_tmp_buffers (c);
  if (verbosity > 1) {

  }
  return 0;
}
