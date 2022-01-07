
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct public_key {int key_is_private; int keylen; int key; } ;
struct pkcs8_parse_context {unsigned long data; struct public_key* pub; int key_size; int key; } ;
typedef int ctx ;


 long ENOMEM ;
 struct public_key* ERR_PTR (long) ;
 int GFP_KERNEL ;
 long asn1_ber_decoder (int *,struct pkcs8_parse_context*,void const*,size_t) ;
 int kfree (struct public_key*) ;
 int kmemdup (int ,int ,int ) ;
 struct public_key* kzalloc (int,int ) ;
 int memset (struct pkcs8_parse_context*,int ,int) ;
 int pkcs8_decoder ;

__attribute__((used)) static struct public_key *pkcs8_parse(const void *data, size_t datalen)
{
 struct pkcs8_parse_context ctx;
 struct public_key *pub;
 long ret;

 memset(&ctx, 0, sizeof(ctx));

 ret = -ENOMEM;
 ctx.pub = kzalloc(sizeof(struct public_key), GFP_KERNEL);
 if (!ctx.pub)
  goto error;

 ctx.data = (unsigned long)data;


 ret = asn1_ber_decoder(&pkcs8_decoder, &ctx, data, datalen);
 if (ret < 0)
  goto error_decode;

 ret = -ENOMEM;
 pub = ctx.pub;
 pub->key = kmemdup(ctx.key, ctx.key_size, GFP_KERNEL);
 if (!pub->key)
  goto error_decode;

 pub->keylen = ctx.key_size;
 pub->key_is_private = 1;
 return pub;

error_decode:
 kfree(ctx.pub);
error:
 return ERR_PTR(ret);
}
