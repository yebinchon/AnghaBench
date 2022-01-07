
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int temp ;
struct shash_desc {int dummy; } ;
struct sha1_state {int count; int * buffer; int state; } ;


 int SHA_WORKSPACE_WORDS ;
 int memcpy (int *,int const*,unsigned int) ;
 int memzero_explicit (int *,int) ;
 int powerpc_sha_transform (int ,int const*,int *) ;
 struct sha1_state* shash_desc_ctx (struct shash_desc*) ;

__attribute__((used)) static int sha1_update(struct shash_desc *desc, const u8 *data,
   unsigned int len)
{
 struct sha1_state *sctx = shash_desc_ctx(desc);
 unsigned int partial, done;
 const u8 *src;

 partial = sctx->count & 0x3f;
 sctx->count += len;
 done = 0;
 src = data;

 if ((partial + len) > 63) {
  u32 temp[SHA_WORKSPACE_WORDS];

  if (partial) {
   done = -partial;
   memcpy(sctx->buffer + partial, data, done + 64);
   src = sctx->buffer;
  }

  do {
   powerpc_sha_transform(sctx->state, src, temp);
   done += 64;
   src = data + done;
  } while (done + 63 < len);

  memzero_explicit(temp, sizeof(temp));
  partial = 0;
 }
 memcpy(sctx->buffer + partial, src, len - done);

 return 0;
}
