
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef unsigned int u32 ;
struct shash_desc {int dummy; } ;
struct rmd256_ctx {int byte_count; char* buffer; int state; } ;


 int memcpy (char*,int const*,unsigned int const) ;
 int rmd256_transform (int ,char*) ;
 struct rmd256_ctx* shash_desc_ctx (struct shash_desc*) ;

__attribute__((used)) static int rmd256_update(struct shash_desc *desc, const u8 *data,
    unsigned int len)
{
 struct rmd256_ctx *rctx = shash_desc_ctx(desc);
 const u32 avail = sizeof(rctx->buffer) - (rctx->byte_count & 0x3f);

 rctx->byte_count += len;


 if (avail > len) {
  memcpy((char *)rctx->buffer + (sizeof(rctx->buffer) - avail),
         data, len);
  goto out;
 }

 memcpy((char *)rctx->buffer + (sizeof(rctx->buffer) - avail),
        data, avail);

 rmd256_transform(rctx->state, rctx->buffer);
 data += avail;
 len -= avail;

 while (len >= sizeof(rctx->buffer)) {
  memcpy(rctx->buffer, data, sizeof(rctx->buffer));
  rmd256_transform(rctx->state, rctx->buffer);
  data += sizeof(rctx->buffer);
  len -= sizeof(rctx->buffer);
 }

 memcpy(rctx->buffer, data, len);

out:
 return 0;
}
