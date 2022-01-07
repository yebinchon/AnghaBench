
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int digest_length; } ;
struct mrb_md {TYPE_1__ ctx; } ;
typedef TYPE_1__ picohash_ctx_t ;
typedef int mrb_value ;
typedef int mrb_state ;


 int PICOHASH_MAX_DIGEST_LENGTH ;
 int mrb_str_new (int *,char*,int ) ;
 int picohash_final (TYPE_1__*,unsigned char*) ;

__attribute__((used)) static mrb_value
lib_md_digest(mrb_state *mrb, const struct mrb_md *md)
{
  picohash_ctx_t ctx;
  unsigned char mdstr[PICOHASH_MAX_DIGEST_LENGTH];

  ctx = md->ctx;
  picohash_final(&ctx, mdstr);
  return mrb_str_new(mrb, (char *)mdstr, ctx.digest_length);
}
