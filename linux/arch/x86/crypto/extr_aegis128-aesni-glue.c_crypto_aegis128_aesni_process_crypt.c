
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int addr; } ;
struct TYPE_8__ {TYPE_3__ virt; } ;
struct TYPE_5__ {int addr; } ;
struct TYPE_6__ {TYPE_1__ virt; } ;
struct skcipher_walk {int nbytes; TYPE_4__ dst; TYPE_2__ src; } ;
struct aegis_state {int dummy; } ;
struct aegis_crypt_ops {int (* crypt_tail ) (struct aegis_state*,int,int ,int ) ;int (* crypt_blocks ) (struct aegis_state*,int ,int ,int ) ;} ;


 int AEGIS128_BLOCK_SIZE ;
 int round_down (int,int) ;
 int skcipher_walk_done (struct skcipher_walk*,int) ;
 int stub1 (struct aegis_state*,int ,int ,int ) ;
 int stub2 (struct aegis_state*,int,int ,int ) ;

__attribute__((used)) static void crypto_aegis128_aesni_process_crypt(
  struct aegis_state *state, struct skcipher_walk *walk,
  const struct aegis_crypt_ops *ops)
{
 while (walk->nbytes >= AEGIS128_BLOCK_SIZE) {
  ops->crypt_blocks(state,
      round_down(walk->nbytes, AEGIS128_BLOCK_SIZE),
      walk->src.virt.addr, walk->dst.virt.addr);
  skcipher_walk_done(walk, walk->nbytes % AEGIS128_BLOCK_SIZE);
 }

 if (walk->nbytes) {
  ops->crypt_tail(state, walk->nbytes, walk->src.virt.addr,
    walk->dst.virt.addr);
  skcipher_walk_done(walk, 0);
 }
}
