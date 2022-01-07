
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct connection {int dummy; } ;


 int connected ;
 int expect_input ;

int rpcc_ready (struct connection *c) {
  connected = expect_input = 1;
  return 0;
}
