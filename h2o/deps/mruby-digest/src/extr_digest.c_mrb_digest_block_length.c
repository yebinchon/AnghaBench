
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mrb_md {int dummy; } ;
typedef int mrb_value ;
typedef int mrb_state ;


 int basecheck (int *,int ,struct mrb_md**) ;
 int lib_md_block_length (struct mrb_md*) ;
 int mrb_fixnum_value (int ) ;

__attribute__((used)) static mrb_value
mrb_digest_block_length(mrb_state *mrb, mrb_value self)
{
  struct mrb_md *md;

  basecheck(mrb, self, &md);
  return mrb_fixnum_value(lib_md_block_length(md));
}
