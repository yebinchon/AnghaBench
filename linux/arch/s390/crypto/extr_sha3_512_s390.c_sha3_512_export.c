
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct shash_desc {int dummy; } ;
struct sha3_state {int rsiz; int rsizw; int buf; int st; } ;
struct s390_sha_ctx {int count; int buf; int state; } ;


 int memcpy (int ,int ,int) ;
 struct s390_sha_ctx* shash_desc_ctx (struct shash_desc*) ;

__attribute__((used)) static int sha3_512_export(struct shash_desc *desc, void *out)
{
 struct s390_sha_ctx *sctx = shash_desc_ctx(desc);
 struct sha3_state *octx = out;

 octx->rsiz = sctx->count;
 octx->rsizw = sctx->count >> 32;

 memcpy(octx->st, sctx->state, sizeof(octx->st));
 memcpy(octx->buf, sctx->buf, sizeof(octx->buf));

 return 0;
}
