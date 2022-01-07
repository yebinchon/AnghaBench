
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct connection {int dummy; } ;


 int http_connections ;

int hts_init_accepted (struct connection *c) {
  http_connections++;
  return 0;
}
