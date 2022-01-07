
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct connection {scalar_t__ crypto; } ;


 int allocated_aes_crypto ;
 int free (scalar_t__) ;

int aes_crypto_free (struct connection *c) {
  if (c->crypto) {
    free (c->crypto);
    c->crypto = 0;
    --allocated_aes_crypto;
  }
  return 0;
}
