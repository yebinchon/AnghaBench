
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct shash_desc {int dummy; } ;
struct s390_sha_ctx {int func; scalar_t__ count; int * state; } ;


 int CPACF_KIMD_SHA_1 ;
 int SHA1_H0 ;
 int SHA1_H1 ;
 int SHA1_H2 ;
 int SHA1_H3 ;
 int SHA1_H4 ;
 struct s390_sha_ctx* shash_desc_ctx (struct shash_desc*) ;

__attribute__((used)) static int sha1_init(struct shash_desc *desc)
{
 struct s390_sha_ctx *sctx = shash_desc_ctx(desc);

 sctx->state[0] = SHA1_H0;
 sctx->state[1] = SHA1_H1;
 sctx->state[2] = SHA1_H2;
 sctx->state[3] = SHA1_H3;
 sctx->state[4] = SHA1_H4;
 sctx->count = 0;
 sctx->func = CPACF_KIMD_SHA_1;

 return 0;
}
