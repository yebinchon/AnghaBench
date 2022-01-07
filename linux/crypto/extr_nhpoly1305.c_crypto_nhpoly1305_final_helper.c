
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct shash_desc {int tfm; } ;
struct nhpoly1305_state {int buflen; int poly_state; scalar_t__ nh_remaining; int * buffer; } ;
struct nhpoly1305_key {int dummy; } ;
typedef int nh_t ;


 scalar_t__ NH_MESSAGE_UNIT ;
 struct nhpoly1305_key* crypto_shash_ctx (int ) ;
 int memset (int *,int ,scalar_t__) ;
 int nhpoly1305_units (struct nhpoly1305_state*,struct nhpoly1305_key const*,int *,scalar_t__,int ) ;
 int poly1305_core_emit (int *,int *) ;
 int process_nh_hash_value (struct nhpoly1305_state*,struct nhpoly1305_key const*) ;
 struct nhpoly1305_state* shash_desc_ctx (struct shash_desc*) ;

int crypto_nhpoly1305_final_helper(struct shash_desc *desc, u8 *dst, nh_t nh_fn)
{
 struct nhpoly1305_state *state = shash_desc_ctx(desc);
 const struct nhpoly1305_key *key = crypto_shash_ctx(desc->tfm);

 if (state->buflen) {
  memset(&state->buffer[state->buflen], 0,
         NH_MESSAGE_UNIT - state->buflen);
  nhpoly1305_units(state, key, state->buffer, NH_MESSAGE_UNIT,
     nh_fn);
 }

 if (state->nh_remaining)
  process_nh_hash_value(state, key);

 poly1305_core_emit(&state->poly_state, dst);
 return 0;
}
