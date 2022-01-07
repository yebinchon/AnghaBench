
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_5__ {int rounds; } ;
typedef TYPE_1__ cf_aes_context ;


 int AES128_ROUNDS ;
 int AES192_ROUNDS ;
 int AES256_ROUNDS ;
 int abort () ;
 int aes_schedule (TYPE_1__*,int const*,size_t) ;
 int memset (TYPE_1__*,int ,int) ;

void cf_aes_init(cf_aes_context *ctx, const uint8_t *key, size_t nkey)
{
  memset(ctx, 0, sizeof *ctx);

  switch (nkey)
  {

    case 16:
      ctx->rounds = AES128_ROUNDS;
      aes_schedule(ctx, key, nkey);
      break;



    case 24:
      ctx->rounds = AES192_ROUNDS;
      aes_schedule(ctx, key, nkey);
      break;



    case 32:
      ctx->rounds = AES256_ROUNDS;
      aes_schedule(ctx, key, nkey);
      break;


    default:
      abort();
  }
}
