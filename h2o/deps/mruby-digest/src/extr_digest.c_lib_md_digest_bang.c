
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int digest_length; } ;
struct mrb_md {TYPE_1__ ctx; } ;
typedef int mrb_value ;
typedef int mrb_state ;


 int PICOHASH_MAX_DIGEST_LENGTH ;
 int mrb_str_new (int *,char*,int ) ;
 int picohash_final (TYPE_1__*,unsigned char*) ;
 int picohash_reset (TYPE_1__*) ;

__attribute__((used)) static mrb_value
lib_md_digest_bang(mrb_state *mrb, struct mrb_md *md)
{
  unsigned char mdstr[PICOHASH_MAX_DIGEST_LENGTH];

  picohash_final(&md->ctx, mdstr);
  picohash_reset(&md->ctx);
  return mrb_str_new(mrb, (char *)mdstr, md->ctx.digest_length);
}
