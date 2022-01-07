
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_6__ {scalar_t__ rate; scalar_t__ npartial; } ;
typedef TYPE_1__ cf_sha3_context ;


 int DOMAIN_HASH_PAD ;
 int assert (int) ;
 int mem_clean (TYPE_1__*,int) ;
 int pad (TYPE_1__*,int ,scalar_t__) ;
 int squeeze (TYPE_1__*,int *,size_t) ;

__attribute__((used)) static void pad_and_squeeze(cf_sha3_context *ctx, uint8_t *out, size_t nout)
{
  pad(ctx, DOMAIN_HASH_PAD, ctx->rate - ctx->npartial);
  assert(ctx->npartial == 0);

  squeeze(ctx, out, nout);
  mem_clean(ctx, sizeof *ctx);
}
