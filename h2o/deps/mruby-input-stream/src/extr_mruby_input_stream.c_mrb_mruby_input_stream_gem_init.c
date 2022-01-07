
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct RClass {int dummy; } ;
struct TYPE_5__ {int object_class; } ;
typedef TYPE_1__ mrb_state ;


 int MRB_ARGS_ANY () ;
 int MRB_ARGS_BLOCK () ;
 int MRB_ARGS_NONE () ;
 struct RClass* mrb_define_class (TYPE_1__*,char*,int ) ;
 int mrb_define_method (TYPE_1__*,struct RClass*,char*,int ,int ) ;
 int mrb_input_stream_byteindex ;
 int mrb_input_stream_gets ;
 int mrb_input_stream_init ;
 int mrb_input_stream_read ;
 int mrb_input_stream_rewind ;

void
mrb_mruby_input_stream_gem_init(mrb_state* mrb)
{
  struct RClass * c = mrb_define_class(mrb, "InputStream", mrb->object_class);

  mrb_define_method(mrb, c, "gets", mrb_input_stream_gets, MRB_ARGS_NONE());
  mrb_define_method(mrb, c, "read", mrb_input_stream_read, MRB_ARGS_ANY());
  mrb_define_method(mrb, c, "initialize", mrb_input_stream_init, MRB_ARGS_BLOCK());
  mrb_define_method(mrb, c, "rewind", mrb_input_stream_rewind, MRB_ARGS_NONE());
  mrb_define_method(mrb, c, "byteindex", mrb_input_stream_byteindex, MRB_ARGS_ANY());
}
