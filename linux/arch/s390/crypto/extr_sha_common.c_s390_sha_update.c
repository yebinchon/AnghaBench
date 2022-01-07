
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct shash_desc {int tfm; } ;
struct s390_sha_ctx {unsigned int count; int const* buf; int state; int func; } ;


 int cpacf_kimd (int ,int ,int const*,unsigned int) ;
 unsigned int crypto_shash_blocksize (int ) ;
 int memcpy (int const*,int const*,unsigned int) ;
 struct s390_sha_ctx* shash_desc_ctx (struct shash_desc*) ;

int s390_sha_update(struct shash_desc *desc, const u8 *data, unsigned int len)
{
 struct s390_sha_ctx *ctx = shash_desc_ctx(desc);
 unsigned int bsize = crypto_shash_blocksize(desc->tfm);
 unsigned int index, n;


 index = ctx->count % bsize;
 ctx->count += len;

 if ((index + len) < bsize)
  goto store;


 if (index) {
  memcpy(ctx->buf + index, data, bsize - index);
  cpacf_kimd(ctx->func, ctx->state, ctx->buf, bsize);
  data += bsize - index;
  len -= bsize - index;
  index = 0;
 }


 if (len >= bsize) {
  n = (len / bsize) * bsize;
  cpacf_kimd(ctx->func, ctx->state, data, n);
  data += n;
  len -= n;
 }
store:
 if (len)
  memcpy(ctx->buf + index , data, len);

 return 0;
}
