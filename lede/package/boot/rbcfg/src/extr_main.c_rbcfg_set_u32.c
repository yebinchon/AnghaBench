
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int uint16_t ;
struct rbcfg_ctx {int dummy; } ;


 int put_u32 (void*,int ) ;
 int rbcfg_find_tag (struct rbcfg_ctx*,int ,int *,void**) ;

__attribute__((used)) static int
rbcfg_set_u32(struct rbcfg_ctx *ctx, uint16_t id, uint32_t val)
{
 void *tag_data;
 uint16_t tag_len;
 int err;

 err = rbcfg_find_tag(ctx, id, &tag_len, &tag_data);
 if (err)
  return err;

 put_u32(tag_data, val);
 return 0;
}
