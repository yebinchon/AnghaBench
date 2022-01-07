
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mrb_md {int dummy; } ;
typedef int mrb_value ;
typedef int mrb_state ;


 scalar_t__ DATA_PTR (int ) ;
 int lib_md_reset (int *,struct mrb_md*) ;
 int mrb_nil_value () ;

__attribute__((used)) static mrb_value
mrb_digest_reset(mrb_state *mrb, mrb_value self)
{
  struct mrb_md *md;

  md = (struct mrb_md *)DATA_PTR(self);
  if (!md) return mrb_nil_value();
  lib_md_reset(mrb, md);
  return self;
}
