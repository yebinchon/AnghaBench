
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct shash_desc {int dummy; } ;
struct s390_sha_ctx {int func; scalar_t__ count; int state; } ;


 int CPACF_KIMD_SHA3_512 ;
 int memset (int ,int ,int) ;
 struct s390_sha_ctx* shash_desc_ctx (struct shash_desc*) ;

__attribute__((used)) static int sha3_512_init(struct shash_desc *desc)
{
 struct s390_sha_ctx *sctx = shash_desc_ctx(desc);

 memset(sctx->state, 0, sizeof(sctx->state));
 sctx->count = 0;
 sctx->func = CPACF_KIMD_SHA3_512;

 return 0;
}
