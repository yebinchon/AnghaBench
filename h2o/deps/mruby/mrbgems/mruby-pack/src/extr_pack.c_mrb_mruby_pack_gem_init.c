
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int string_class; int array_class; } ;
typedef TYPE_1__ mrb_state ;


 int MRB_ARGS_REQ (int) ;
 int check_little_endian () ;
 int make_base64_dec_tab () ;
 int mrb_define_method (TYPE_1__*,int ,char*,int ,int ) ;
 int mrb_pack_pack ;
 int mrb_pack_unpack ;
 int mrb_pack_unpack1 ;

void
mrb_mruby_pack_gem_init(mrb_state *mrb)
{
  check_little_endian();
  make_base64_dec_tab();

  mrb_define_method(mrb, mrb->array_class, "pack", mrb_pack_pack, MRB_ARGS_REQ(1));
  mrb_define_method(mrb, mrb->string_class, "unpack", mrb_pack_unpack, MRB_ARGS_REQ(1));
  mrb_define_method(mrb, mrb->string_class, "unpack1", mrb_pack_unpack1, MRB_ARGS_REQ(1));
}
