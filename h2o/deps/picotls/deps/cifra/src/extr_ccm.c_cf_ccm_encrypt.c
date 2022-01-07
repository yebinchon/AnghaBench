
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int const uint8_t ;
struct TYPE_5__ {size_t blocksz; } ;
typedef TYPE_1__ cf_prp ;
typedef int cf_ctr ;
typedef int cf_cbcmac_stream ;


 int CF_MAXBLOCK ;
 int add_aad (int *,int const*,int const*,size_t) ;
 int add_block0 (int *,int const*,size_t,int const*,size_t,size_t,size_t,size_t,size_t) ;
 int assert (int) ;
 int build_ctr_nonce (int const*,size_t,int const*,size_t) ;
 int cf_cbcmac_stream_init (int *,TYPE_1__ const*,void*) ;
 int cf_cbcmac_stream_nopad_final (int *,int const*) ;
 int cf_cbcmac_stream_update (int *,int const*,size_t) ;
 int cf_ctr_cipher (int *,int const*,int const*,size_t) ;
 int cf_ctr_custom_counter (int *,size_t,size_t) ;
 int cf_ctr_init (int *,TYPE_1__ const*,void*,int const*) ;
 int memcpy (int const*,int const*,size_t) ;
 int zero_pad (int *) ;

void cf_ccm_encrypt(const cf_prp *prp, void *prpctx,
                    const uint8_t *plain, size_t nplain, size_t L,
                    const uint8_t *header, size_t nheader,
                    const uint8_t *nonce, size_t nnonce,
                    uint8_t *cipher,
                    uint8_t *tag, size_t ntag)
{
  uint8_t block[CF_MAXBLOCK];

  assert(ntag >= 4 && ntag <= 16 && ntag % 2 == 0);
  assert(L >= 2 && L <= 8);
  assert(nnonce == prp->blocksz - L - 1);

  cf_cbcmac_stream cm;
  cf_cbcmac_stream_init(&cm, prp, prpctx);


  add_block0(&cm, block, prp->blocksz,
             nonce, nnonce,
             L, nplain, nheader, ntag);


  if (nheader)
    add_aad(&cm, block, header, nheader);


  cf_cbcmac_stream_update(&cm, plain, nplain);
  zero_pad(&cm);


  cf_cbcmac_stream_nopad_final(&cm, block);



  uint8_t ctr_nonce[CF_MAXBLOCK];
  build_ctr_nonce(ctr_nonce, L, nonce, nnonce);

  cf_ctr ctr;
  cf_ctr_init(&ctr, prp, prpctx, ctr_nonce);
  cf_ctr_custom_counter(&ctr, prp->blocksz - L, L);


  cf_ctr_cipher(&ctr, block, block, prp->blocksz);
  memcpy(tag, block, ntag);


  cf_ctr_cipher(&ctr, plain, cipher, nplain);
}
