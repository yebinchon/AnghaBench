
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct RClass {int dummy; } ;
struct TYPE_6__ {int object_class; } ;
typedef TYPE_1__ mrb_state ;


 int DEFCLASS (int ) ;
 int MD5 ;
 int MRB_ARGS_NONE () ;
 int MRB_ARGS_REQ (int) ;
 int MRB_SET_INSTANCE_TT (struct RClass*,int ) ;
 int MRB_TT_DATA ;
 int RMD160 ;
 int SHA1 ;
 int SHA256 ;
 int SHA384 ;
 int SHA512 ;
 int lib_init () ;
 struct RClass* mrb_define_class_under (TYPE_1__*,struct RClass*,char*,int ) ;
 int mrb_define_method (TYPE_1__*,struct RClass*,char*,int ,int ) ;
 struct RClass* mrb_define_module (TYPE_1__*,char*) ;
 int mrb_digest_block_length ;
 int mrb_digest_digest ;
 int mrb_digest_digest_bang ;
 int mrb_digest_digest_length ;
 int mrb_digest_hexdigest ;
 int mrb_digest_init ;
 int mrb_digest_init_copy ;
 int mrb_digest_reset ;
 int mrb_digest_update ;
 int mrb_hmac_block_length ;
 int mrb_hmac_digest ;
 int mrb_hmac_digest_length ;
 int mrb_hmac_hexdigest ;
 int mrb_hmac_init ;
 int mrb_hmac_init_copy ;
 int mrb_hmac_update ;

void
mrb_mruby_digest_gem_init(mrb_state *mrb)
{
  struct RClass *b, *d, *h;

  lib_init();

  d = mrb_define_module(mrb, "Digest");

  b = mrb_define_class_under(mrb, d, "Base", mrb->object_class);
  mrb_define_method(mrb, b, "block_length", mrb_digest_block_length, MRB_ARGS_NONE());
  mrb_define_method(mrb, b, "digest", mrb_digest_digest, MRB_ARGS_NONE());
  mrb_define_method(mrb, b, "digest!", mrb_digest_digest_bang, MRB_ARGS_NONE());
  mrb_define_method(mrb, b, "digest_length", mrb_digest_digest_length, MRB_ARGS_NONE());

  mrb_define_method(mrb, b, "hexdigest", mrb_digest_hexdigest, MRB_ARGS_NONE());

  mrb_define_method(mrb, b, "initialize", mrb_digest_init, MRB_ARGS_NONE());
  mrb_define_method(mrb, b, "initialize_copy", mrb_digest_init_copy, MRB_ARGS_REQ(1));
  mrb_define_method(mrb, b, "reset", mrb_digest_reset, MRB_ARGS_NONE());
  mrb_define_method(mrb, b, "update", mrb_digest_update, MRB_ARGS_REQ(1));
  h = mrb_define_class_under(mrb, d, "HMAC", mrb->object_class);
  MRB_SET_INSTANCE_TT(h, MRB_TT_DATA);
  mrb_define_method(mrb, h, "block_length", mrb_hmac_block_length, MRB_ARGS_NONE());
  mrb_define_method(mrb, h, "digest", mrb_hmac_digest, MRB_ARGS_NONE());
  mrb_define_method(mrb, h, "digest_length", mrb_hmac_digest_length, MRB_ARGS_NONE());
  mrb_define_method(mrb, h, "hexdigest", mrb_hmac_hexdigest, MRB_ARGS_NONE());
  mrb_define_method(mrb, h, "initialize", mrb_hmac_init, MRB_ARGS_REQ(2));
  mrb_define_method(mrb, h, "initialize_copy", mrb_hmac_init_copy, MRB_ARGS_REQ(1));
  mrb_define_method(mrb, h, "update", mrb_hmac_update, MRB_ARGS_REQ(1));
}
