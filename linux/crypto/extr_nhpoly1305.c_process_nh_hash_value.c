
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nhpoly1305_state {int nh_hash; int poly_state; } ;
struct nhpoly1305_key {int poly_key; } ;


 int BUILD_BUG_ON (int) ;
 int NH_HASH_BYTES ;
 int POLY1305_BLOCK_SIZE ;
 int poly1305_core_blocks (int *,int *,int ,int) ;

__attribute__((used)) static void process_nh_hash_value(struct nhpoly1305_state *state,
      const struct nhpoly1305_key *key)
{
 BUILD_BUG_ON(NH_HASH_BYTES % POLY1305_BLOCK_SIZE != 0);

 poly1305_core_blocks(&state->poly_state, &key->poly_key, state->nh_hash,
        NH_HASH_BYTES / POLY1305_BLOCK_SIZE);
}
