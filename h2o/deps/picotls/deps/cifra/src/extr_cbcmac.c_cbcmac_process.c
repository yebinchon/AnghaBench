
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_2__ {int cbc; } ;
typedef TYPE_1__ cf_cbcmac_stream ;


 int CF_MAXBLOCK ;
 int cf_cbc_encrypt (int *,int const*,int *,int) ;

__attribute__((used)) static void cbcmac_process(void *vctx, const uint8_t *block)
{
  cf_cbcmac_stream *ctx = vctx;
  uint8_t output[CF_MAXBLOCK];
  cf_cbc_encrypt(&ctx->cbc, block, output, 1);
}
