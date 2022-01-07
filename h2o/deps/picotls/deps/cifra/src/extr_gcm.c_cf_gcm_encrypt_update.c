
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_3__ {int gh; int ctr; } ;
typedef TYPE_1__ cf_gcm_ctx ;


 int cf_ctr_cipher (int *,int const*,int *,size_t) ;
 int ghash_add_cipher (int *,int *,size_t) ;

void cf_gcm_encrypt_update(cf_gcm_ctx *gcmctx, const uint8_t *plain, size_t nplain, uint8_t *cipher)
{
  cf_ctr_cipher(&gcmctx->ctr, plain, cipher, nplain);
  ghash_add_cipher(&gcmctx->gh, cipher, nplain);
}
