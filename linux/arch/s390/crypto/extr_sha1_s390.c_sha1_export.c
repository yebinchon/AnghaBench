
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct shash_desc {int dummy; } ;
struct sha1_state {int buffer; int state; int count; } ;
struct s390_sha_ctx {int buf; int state; int count; } ;


 int memcpy (int ,int ,int) ;
 struct s390_sha_ctx* shash_desc_ctx (struct shash_desc*) ;

__attribute__((used)) static int sha1_export(struct shash_desc *desc, void *out)
{
 struct s390_sha_ctx *sctx = shash_desc_ctx(desc);
 struct sha1_state *octx = out;

 octx->count = sctx->count;
 memcpy(octx->state, sctx->state, sizeof(octx->state));
 memcpy(octx->buffer, sctx->buf, sizeof(octx->buffer));
 return 0;
}
