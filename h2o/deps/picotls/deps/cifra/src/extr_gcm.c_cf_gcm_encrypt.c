
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int cf_prp ;
typedef int cf_gcm_ctx ;


 int cf_gcm_encrypt_final (int *,int *,size_t) ;
 int cf_gcm_encrypt_init (int const*,void*,int *,int const*,size_t,int const*,size_t) ;
 int cf_gcm_encrypt_update (int *,int const*,size_t,int *) ;

void cf_gcm_encrypt(const cf_prp *prp, void *prpctx,
                    const uint8_t *plain, size_t nplain,
                    const uint8_t *header, size_t nheader,
                    const uint8_t *nonce, size_t nnonce,
                    uint8_t *cipher,
                    uint8_t *tag, size_t ntag)
{
  cf_gcm_ctx gcmctx;

  cf_gcm_encrypt_init(prp, prpctx, &gcmctx, header, nheader, nonce, nnonce);
  cf_gcm_encrypt_update(&gcmctx, plain, nplain, cipher);
  cf_gcm_encrypt_final(&gcmctx, tag, ntag);
}
