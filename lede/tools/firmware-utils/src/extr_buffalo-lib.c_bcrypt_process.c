
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bcrypt_ctx {unsigned char* state; unsigned long state_len; unsigned char i; unsigned char j; } ;



int bcrypt_process(struct bcrypt_ctx *ctx, unsigned char *src,
     unsigned char *dst, unsigned long len)
{
 unsigned char *state = ctx->state;
 unsigned long state_len = ctx->state_len;
 unsigned char i, j;
 unsigned long k;

 i = ctx->i;
 j = ctx->j;

 for (k = 0; k < len; k++) {
  unsigned char t;

  i = (i + 1) % state_len;
  j = (j + state[i]) % state_len;
  t = state[j];
  state[j] = state[i];
  state[i] = t;

  dst[k] = src[k] ^ state[(state[i] + state[j]) % state_len];
 }

 ctx->i = i;
 ctx->j = j;

 return len;
}
