
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_3__ {int constant; int key1; int key0; } ;
typedef TYPE_1__ cf_chacha20_ctx ;


 int abort () ;
 int chacha20_sigma ;
 int chacha20_tau ;
 int memcpy (int ,int const*,int) ;

__attribute__((used)) static void set_key(cf_chacha20_ctx *ctx, const uint8_t *key, size_t nkey)
{
  switch (nkey)
  {
    case 16:
      memcpy(ctx->key0, key, 16);
      memcpy(ctx->key1, key, 16);
      ctx->constant = chacha20_tau;
      break;
    case 32:
      memcpy(ctx->key0, key, 16);
      memcpy(ctx->key1, key + 16, 16);
      ctx->constant = chacha20_sigma;
      break;
    default:
      abort();
  }
}
