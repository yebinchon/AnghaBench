
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct shash_desc {int dummy; } ;
struct sha3_state {int buf; int st; int rsiz; int rsizw; } ;
struct s390_sha_ctx {int func; int buf; int state; int count; } ;


 int CPACF_KIMD_SHA3_384 ;
 int ERANGE ;
 int memcpy (int ,int ,int) ;
 struct s390_sha_ctx* shash_desc_ctx (struct shash_desc*) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static int sha3_384_import(struct shash_desc *desc, const void *in)
{
 struct s390_sha_ctx *sctx = shash_desc_ctx(desc);
 const struct sha3_state *ictx = in;

 if (unlikely(ictx->rsizw))
  return -ERANGE;
 sctx->count = ictx->rsiz;

 memcpy(sctx->state, ictx->st, sizeof(ictx->st));
 memcpy(sctx->buf, ictx->buf, sizeof(ictx->buf));
 sctx->func = CPACF_KIMD_SHA3_384;

 return 0;
}
