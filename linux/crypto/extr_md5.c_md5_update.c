
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef unsigned int u32 ;
struct shash_desc {int dummy; } ;
struct md5_state {int byte_count; char* block; } ;


 int md5_transform_helper (struct md5_state*) ;
 int memcpy (char*,int const*,unsigned int const) ;
 struct md5_state* shash_desc_ctx (struct shash_desc*) ;

__attribute__((used)) static int md5_update(struct shash_desc *desc, const u8 *data, unsigned int len)
{
 struct md5_state *mctx = shash_desc_ctx(desc);
 const u32 avail = sizeof(mctx->block) - (mctx->byte_count & 0x3f);

 mctx->byte_count += len;

 if (avail > len) {
  memcpy((char *)mctx->block + (sizeof(mctx->block) - avail),
         data, len);
  return 0;
 }

 memcpy((char *)mctx->block + (sizeof(mctx->block) - avail),
        data, avail);

 md5_transform_helper(mctx);
 data += avail;
 len -= avail;

 while (len >= sizeof(mctx->block)) {
  memcpy(mctx->block, data, sizeof(mctx->block));
  md5_transform_helper(mctx);
  data += sizeof(mctx->block);
  len -= sizeof(mctx->block);
 }

 memcpy(mctx->block, data, len);

 return 0;
}
