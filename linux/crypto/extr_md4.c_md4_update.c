
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef unsigned int u32 ;
struct shash_desc {int dummy; } ;
struct md4_ctx {int byte_count; char* block; } ;


 int md4_transform_helper (struct md4_ctx*) ;
 int memcpy (char*,int const*,unsigned int const) ;
 struct md4_ctx* shash_desc_ctx (struct shash_desc*) ;

__attribute__((used)) static int md4_update(struct shash_desc *desc, const u8 *data, unsigned int len)
{
 struct md4_ctx *mctx = shash_desc_ctx(desc);
 const u32 avail = sizeof(mctx->block) - (mctx->byte_count & 0x3f);

 mctx->byte_count += len;

 if (avail > len) {
  memcpy((char *)mctx->block + (sizeof(mctx->block) - avail),
         data, len);
  return 0;
 }

 memcpy((char *)mctx->block + (sizeof(mctx->block) - avail),
        data, avail);

 md4_transform_helper(mctx);
 data += avail;
 len -= avail;

 while (len >= sizeof(mctx->block)) {
  memcpy(mctx->block, data, sizeof(mctx->block));
  md4_transform_helper(mctx);
  data += sizeof(mctx->block);
  len -= sizeof(mctx->block);
 }

 memcpy(mctx->block, data, len);

 return 0;
}
