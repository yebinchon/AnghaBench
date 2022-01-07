
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct connection {int flags; } ;


 int C_INTIMEOUT ;
 int vkprintf (int,char*) ;

int pmemcached_get_start (struct connection *c) {
  c->flags &= ~C_INTIMEOUT;
  vkprintf (1, "memcache_get_start\n");
  return 0;
}
