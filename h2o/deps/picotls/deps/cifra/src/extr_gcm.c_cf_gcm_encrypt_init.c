
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_6__ {int (* encrypt ) (void*,int *,int *) ;} ;
typedef TYPE_1__ cf_prp ;
struct TYPE_7__ {int* Y0; int e_Y0; int ctr; int gh; } ;
typedef TYPE_2__ cf_gcm_ctx ;


 int cf_ctr_cipher (int *,int ,int ,int) ;
 int cf_ctr_custom_counter (int *,int,int) ;
 int cf_ctr_init (int *,TYPE_1__ const*,void*,int*) ;
 int ghash_add_aad (int *,int const*,size_t) ;
 int ghash_add_cipher (int *,int const*,size_t) ;
 int ghash_final (int *,int*) ;
 int ghash_init (int *,int *) ;
 int mem_clean (int *,int) ;
 int memcpy (int*,int const*,size_t) ;
 int memset (int ,int ,int) ;
 int stub1 (void*,int *,int *) ;

void cf_gcm_encrypt_init(const cf_prp *prp, void *prpctx, cf_gcm_ctx *gcmctx,
                         const uint8_t *header, size_t nheader,
                         const uint8_t *nonce, size_t nnonce)
{
  uint8_t H[16] = { 0 };


  prp->encrypt(prpctx, H, H);
  if (nnonce == 12)
  {
    memcpy(gcmctx->Y0, nonce, nnonce);
    gcmctx->Y0[12] = gcmctx->Y0[13] = gcmctx->Y0[14] = 0x00;
    gcmctx->Y0[15] = 0x01;
  } else {
    ghash_init(&gcmctx->gh, H);
    ghash_add_cipher(&gcmctx->gh, nonce, nnonce);
    ghash_final(&gcmctx->gh, gcmctx->Y0);
  }


  ghash_init(&gcmctx->gh, H);
  ghash_add_aad(&gcmctx->gh, header, nheader);


  memset(gcmctx->e_Y0, 0, sizeof(gcmctx->e_Y0));
  cf_ctr_init(&gcmctx->ctr, prp, prpctx, gcmctx->Y0);
  cf_ctr_custom_counter(&gcmctx->ctr, 12, 4);
  cf_ctr_cipher(&gcmctx->ctr, gcmctx->e_Y0, gcmctx->e_Y0, sizeof gcmctx->e_Y0);

  mem_clean(H, sizeof H);
}
