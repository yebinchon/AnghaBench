
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct shash_desc {int dummy; } ;
struct sha256_state {int buf; int state; int count; } ;
struct s390_sha_ctx {int func; int buf; int state; int count; } ;


 int CPACF_KIMD_SHA_256 ;
 int memcpy (int ,int ,int) ;
 struct s390_sha_ctx* shash_desc_ctx (struct shash_desc*) ;

__attribute__((used)) static int sha256_import(struct shash_desc *desc, const void *in)
{
 struct s390_sha_ctx *sctx = shash_desc_ctx(desc);
 const struct sha256_state *ictx = in;

 sctx->count = ictx->count;
 memcpy(sctx->state, ictx->state, sizeof(ictx->state));
 memcpy(sctx->buf, ictx->buf, sizeof(ictx->buf));
 sctx->func = CPACF_KIMD_SHA_256;
 return 0;
}
