
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct connection {int dummy; } ;


 int rpcc_init_fake_crypto (struct connection*) ;

int rpcc_init_crypto (struct connection *c) {
  return rpcc_init_fake_crypto (c);
}
