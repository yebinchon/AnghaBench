
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct x509_parse_context {size_t cn_size; size_t o_size; size_t email_size; int cn_offset; int o_offset; int email_offset; scalar_t__ data; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 char* kmalloc (size_t,int ) ;
 scalar_t__ memcmp (void const*,void const*,int) ;
 int memcpy (char*,void const*,size_t) ;

__attribute__((used)) static int x509_fabricate_name(struct x509_parse_context *ctx, size_t hdrlen,
          unsigned char tag,
          char **_name, size_t vlen)
{
 const void *name, *data = (const void *)ctx->data;
 size_t namesize;
 char *buffer;

 if (*_name)
  return -EINVAL;


 if (!ctx->cn_size && !ctx->o_size && !ctx->email_size) {
  buffer = kmalloc(1, GFP_KERNEL);
  if (!buffer)
   return -ENOMEM;
  buffer[0] = 0;
  goto done;
 }

 if (ctx->cn_size && ctx->o_size) {



  namesize = ctx->cn_size;
  name = data + ctx->cn_offset;
  if (ctx->cn_size >= ctx->o_size &&
      memcmp(data + ctx->cn_offset, data + ctx->o_offset,
      ctx->o_size) == 0)
   goto single_component;
  if (ctx->cn_size >= 7 &&
      ctx->o_size >= 7 &&
      memcmp(data + ctx->cn_offset, data + ctx->o_offset, 7) == 0)
   goto single_component;

  buffer = kmalloc(ctx->o_size + 2 + ctx->cn_size + 1,
     GFP_KERNEL);
  if (!buffer)
   return -ENOMEM;

  memcpy(buffer,
         data + ctx->o_offset, ctx->o_size);
  buffer[ctx->o_size + 0] = ':';
  buffer[ctx->o_size + 1] = ' ';
  memcpy(buffer + ctx->o_size + 2,
         data + ctx->cn_offset, ctx->cn_size);
  buffer[ctx->o_size + 2 + ctx->cn_size] = 0;
  goto done;

 } else if (ctx->cn_size) {
  namesize = ctx->cn_size;
  name = data + ctx->cn_offset;
 } else if (ctx->o_size) {
  namesize = ctx->o_size;
  name = data + ctx->o_offset;
 } else {
  namesize = ctx->email_size;
  name = data + ctx->email_offset;
 }

single_component:
 buffer = kmalloc(namesize + 1, GFP_KERNEL);
 if (!buffer)
  return -ENOMEM;
 memcpy(buffer, name, namesize);
 buffer[namesize] = 0;

done:
 *_name = buffer;
 ctx->cn_size = 0;
 ctx->o_size = 0;
 ctx->email_size = 0;
 return 0;
}
