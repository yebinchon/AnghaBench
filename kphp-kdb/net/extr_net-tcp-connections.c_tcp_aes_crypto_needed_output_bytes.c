
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int total_bytes; } ;
struct connection {TYPE_1__ out; int crypto; } ;


 int assert (int ) ;

int tcp_aes_crypto_needed_output_bytes (struct connection *c) {
  assert (c->crypto);
  return -c->out.total_bytes & 15;
}
