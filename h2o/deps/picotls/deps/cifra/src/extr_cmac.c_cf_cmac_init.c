
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {void* prpctx; TYPE_2__ const* prp; int P; int B; } ;
typedef TYPE_1__ uint8_t ;
struct TYPE_11__ {int blocksz; int (* encrypt ) (void*,TYPE_1__*,TYPE_1__*) ;} ;
typedef TYPE_2__ cf_prp ;
typedef int cf_gf128 ;
typedef TYPE_1__ cf_cmac ;


 int CF_MAXBLOCK ;
 int assert (int) ;
 int cf_gf128_double (int ,int ) ;
 int cf_gf128_frombytes_be (TYPE_1__*,int ) ;
 int cf_gf128_tobytes_be (int ,int ) ;
 int mem_clean (TYPE_1__*,int) ;
 int stub1 (void*,TYPE_1__*,TYPE_1__*) ;

void cf_cmac_init(cf_cmac *ctx, const cf_prp *prp, void *prpctx)
{
  uint8_t L[CF_MAXBLOCK];
  assert(prp->blocksz == 16);

  mem_clean(ctx, sizeof *ctx);


  mem_clean(L, prp->blocksz);
  prp->encrypt(prpctx, L, L);


  cf_gf128 gf;
  cf_gf128_frombytes_be(L, gf);
  cf_gf128_double(gf, gf);
  cf_gf128_tobytes_be(gf, ctx->B);


  cf_gf128_double(gf, gf);
  cf_gf128_tobytes_be(gf, ctx->P);

  ctx->prp = prp;
  ctx->prpctx = prpctx;
}
