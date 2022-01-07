
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pefile_context {size_t digest_len; int digest; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int kmemdup (void const*,size_t,int ) ;

int mscode_note_digest(void *context, size_t hdrlen,
         unsigned char tag,
         const void *value, size_t vlen)
{
 struct pefile_context *ctx = context;

 ctx->digest = kmemdup(value, vlen, GFP_KERNEL);
 if (!ctx->digest)
  return -ENOMEM;

 ctx->digest_len = vlen;

 return 0;
}
