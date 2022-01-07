
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mrb_md {int dummy; } ;
typedef int mrb_value ;
typedef int mrb_state ;
typedef int mrb_int ;


 scalar_t__ DATA_PTR (int ) ;
 int lib_md_update (int *,struct mrb_md*,unsigned char*,int ) ;
 int mrb_get_args (int *,char*,char**,int *) ;
 int mrb_nil_value () ;

__attribute__((used)) static mrb_value
mrb_digest_update(mrb_state *mrb, mrb_value self)
{
  struct mrb_md *md;
  mrb_int len;
  char *str;

  md = (struct mrb_md *)DATA_PTR(self);
  if (!md) return mrb_nil_value();
  mrb_get_args(mrb, "s", &str, &len);
  lib_md_update(mrb, md, (unsigned char *)str, len);
  return self;
}
