
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int sha256; } ;
typedef TYPE_1__ git_hash_ctx ;


 int git_SHA256_Init (int *) ;

__attribute__((used)) static void git_hash_sha256_init(git_hash_ctx *ctx)
{
 git_SHA256_Init(&ctx->sha256);
}
