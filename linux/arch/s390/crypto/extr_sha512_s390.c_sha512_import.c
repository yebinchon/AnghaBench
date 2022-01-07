
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct shash_desc {int dummy; } ;
struct sha512_state {int buf; int state; int * count; } ;
struct s390_sha_ctx {int func; int buf; int state; int count; } ;


 int CPACF_KIMD_SHA_512 ;
 int ERANGE ;
 int memcpy (int ,int ,int) ;
 struct s390_sha_ctx* shash_desc_ctx (struct shash_desc*) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static int sha512_import(struct shash_desc *desc, const void *in)
{
 struct s390_sha_ctx *sctx = shash_desc_ctx(desc);
 const struct sha512_state *ictx = in;

 if (unlikely(ictx->count[1]))
  return -ERANGE;
 sctx->count = ictx->count[0];

 memcpy(sctx->state, ictx->state, sizeof(ictx->state));
 memcpy(sctx->buf, ictx->buf, sizeof(ictx->buf));
 sctx->func = CPACF_KIMD_SHA_512;
 return 0;
}
