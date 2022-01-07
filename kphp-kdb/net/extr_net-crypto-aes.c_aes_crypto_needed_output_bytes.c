
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int unprocessed_bytes; } ;
struct connection {TYPE_1__ Out; int crypto; } ;


 int assert (int ) ;

int aes_crypto_needed_output_bytes (struct connection *c) {
  assert (c->crypto);
  return -c->Out.unprocessed_bytes & 15;
}
