
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct connection {int ready; } ;


 int cr_ok ;

int mcp_check_ready (struct connection *c) {
  return c->ready = cr_ok;
}
