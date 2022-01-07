
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pefile_context {int sig_offset; int digest; int digest_len; int sig_len; } ;
struct key {int dummy; } ;
typedef enum key_being_used_for { ____Placeholder_key_being_used_for } key_being_used_for ;
typedef int ctx ;


 int kenter (char*) ;
 int kzfree (int ) ;
 int memset (struct pefile_context*,int ,int) ;
 int mscode_parse ;
 int pefile_digest_pe (void const*,unsigned int,struct pefile_context*) ;
 int pefile_parse_binary (void const*,unsigned int,struct pefile_context*) ;
 int pefile_strip_sig_wrapper (void const*,struct pefile_context*) ;
 int pr_debug (char*,int ,int ,int ) ;
 int verify_pkcs7_signature (int *,int ,void const*,int ,struct key*,int,int ,struct pefile_context*) ;

int verify_pefile_signature(const void *pebuf, unsigned pelen,
       struct key *trusted_keys,
       enum key_being_used_for usage)
{
 struct pefile_context ctx;
 int ret;

 kenter("");

 memset(&ctx, 0, sizeof(ctx));
 ret = pefile_parse_binary(pebuf, pelen, &ctx);
 if (ret < 0)
  return ret;

 ret = pefile_strip_sig_wrapper(pebuf, &ctx);
 if (ret < 0)
  return ret;

 ret = verify_pkcs7_signature(((void*)0), 0,
         pebuf + ctx.sig_offset, ctx.sig_len,
         trusted_keys, usage,
         mscode_parse, &ctx);
 if (ret < 0)
  goto error;

 pr_debug("Digest: %u [%*ph]\n",
   ctx.digest_len, ctx.digest_len, ctx.digest);




 ret = pefile_digest_pe(pebuf, pelen, &ctx);

error:
 kzfree(ctx.digest);
 return ret;
}
