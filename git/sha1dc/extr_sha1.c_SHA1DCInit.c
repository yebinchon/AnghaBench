
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int* ihv; int ubc_check; int detect_coll; int * callback; scalar_t__ reduced_round_coll; int safe_hash; scalar_t__ found_collision; scalar_t__ total; } ;
typedef TYPE_1__ SHA1_CTX ;


 int SHA1DC_INIT_SAFE_HASH_DEFAULT ;

void SHA1DCInit(SHA1_CTX* ctx)
{
 ctx->total = 0;
 ctx->ihv[0] = 0x67452301;
 ctx->ihv[1] = 0xEFCDAB89;
 ctx->ihv[2] = 0x98BADCFE;
 ctx->ihv[3] = 0x10325476;
 ctx->ihv[4] = 0xC3D2E1F0;
 ctx->found_collision = 0;
 ctx->safe_hash = SHA1DC_INIT_SAFE_HASH_DEFAULT;
 ctx->ubc_check = 1;
 ctx->detect_coll = 1;
 ctx->reduced_round_coll = 0;
 ctx->callback = ((void*)0);
}
