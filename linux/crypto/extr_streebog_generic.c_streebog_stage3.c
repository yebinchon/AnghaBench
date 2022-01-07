
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int member_0; } ;
struct streebog_uint512 {int * qword; TYPE_1__ member_0; } ;
struct streebog_state {int fillsize; int h; int hash; struct streebog_uint512 Sigma; struct streebog_uint512 N; struct streebog_uint512 m; } ;


 struct streebog_uint512 buffer0 ;
 int cpu_to_le64 (int) ;
 int memcpy (int *,int *,int) ;
 int streebog_add512 (struct streebog_uint512*,struct streebog_uint512*,struct streebog_uint512*) ;
 int streebog_g (int *,struct streebog_uint512*,struct streebog_uint512*) ;
 int streebog_pad (struct streebog_state*) ;

__attribute__((used)) static void streebog_stage3(struct streebog_state *ctx)
{
 struct streebog_uint512 buf = { { 0 } };

 buf.qword[0] = cpu_to_le64(ctx->fillsize << 3);
 streebog_pad(ctx);

 streebog_g(&ctx->h, &ctx->N, &ctx->m);
 streebog_add512(&ctx->N, &buf, &ctx->N);
 streebog_add512(&ctx->Sigma, &ctx->m, &ctx->Sigma);
 streebog_g(&ctx->h, &buffer0, &ctx->N);
 streebog_g(&ctx->h, &buffer0, &ctx->Sigma);
 memcpy(&ctx->hash, &ctx->h, sizeof(struct streebog_uint512));
}
