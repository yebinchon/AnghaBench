
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_nonce_packet {int dummy; } ;
struct connection {int dummy; } ;


 int rpcs_init_fake_crypto (struct connection*) ;

int rpcs_init_crypto (struct connection *c, struct rpc_nonce_packet *P) {
  return rpcs_init_fake_crypto (c);
}
