
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct shash_desc {int tfm; } ;
struct nhpoly1305_state {int buflen; int const* buffer; } ;
struct nhpoly1305_key {int dummy; } ;
typedef int nh_t ;


 unsigned int NH_MESSAGE_UNIT ;
 struct nhpoly1305_key* crypto_shash_ctx (int ) ;
 int memcpy (int const*,int const*,unsigned int) ;
 unsigned int min (unsigned int,int) ;
 int nhpoly1305_units (struct nhpoly1305_state*,struct nhpoly1305_key const*,int const*,unsigned int,int ) ;
 unsigned int round_down (unsigned int,unsigned int) ;
 struct nhpoly1305_state* shash_desc_ctx (struct shash_desc*) ;

int crypto_nhpoly1305_update_helper(struct shash_desc *desc,
        const u8 *src, unsigned int srclen,
        nh_t nh_fn)
{
 struct nhpoly1305_state *state = shash_desc_ctx(desc);
 const struct nhpoly1305_key *key = crypto_shash_ctx(desc->tfm);
 unsigned int bytes;

 if (state->buflen) {
  bytes = min(srclen, (int)NH_MESSAGE_UNIT - state->buflen);
  memcpy(&state->buffer[state->buflen], src, bytes);
  state->buflen += bytes;
  if (state->buflen < NH_MESSAGE_UNIT)
   return 0;
  nhpoly1305_units(state, key, state->buffer, NH_MESSAGE_UNIT,
     nh_fn);
  state->buflen = 0;
  src += bytes;
  srclen -= bytes;
 }

 if (srclen >= NH_MESSAGE_UNIT) {
  bytes = round_down(srclen, NH_MESSAGE_UNIT);
  nhpoly1305_units(state, key, src, bytes, nh_fn);
  src += bytes;
  srclen -= bytes;
 }

 if (srclen) {
  memcpy(state->buffer, src, srclen);
  state->buflen = srclen;
 }
 return 0;
}
