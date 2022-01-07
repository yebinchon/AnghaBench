
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct connection {int query_start_time; int flags; } ;


 int CLOCK_MONOTONIC ;
 int C_INTIMEOUT ;
 int get_utime (int ) ;

int memcache_get_start (struct connection *c) {
  c->flags &= ~C_INTIMEOUT;
  c->query_start_time = get_utime (CLOCK_MONOTONIC);
  return 0;
}
