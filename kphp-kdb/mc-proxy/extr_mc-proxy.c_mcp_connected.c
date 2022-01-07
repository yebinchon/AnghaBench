
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct connection {double last_query_time; } ;


 double drand48 () ;

int mcp_connected (struct connection *c) {
  c->last_query_time = drand48() * 0.1;
  return 0;
}
