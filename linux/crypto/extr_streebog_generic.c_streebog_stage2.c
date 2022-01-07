
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct streebog_uint512 {int dummy; } ;
struct streebog_state {int Sigma; int N; int h; } ;
typedef int m ;


 struct streebog_uint512 buffer512 ;
 int memcpy (struct streebog_uint512*,int const*,int) ;
 int streebog_add512 (int *,struct streebog_uint512*,int *) ;
 int streebog_g (int *,int *,struct streebog_uint512*) ;

__attribute__((used)) static void streebog_stage2(struct streebog_state *ctx, const u8 *data)
{
 struct streebog_uint512 m;

 memcpy(&m, data, sizeof(m));

 streebog_g(&ctx->h, &ctx->N, &m);

 streebog_add512(&ctx->N, &buffer512, &ctx->N);
 streebog_add512(&ctx->Sigma, &m, &ctx->Sigma);
}
