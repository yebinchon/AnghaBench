
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct RClass {int dummy; } ;
typedef int mrb_state ;
struct TYPE_3__ {scalar_t__ len; } ;
typedef TYPE_1__ mrb_input_stream_t ;


 struct RClass* E_RUNTIME_ERROR ;
 struct RClass* mrb_class_get (int *,char*) ;
 int mrb_raise (int *,struct RClass*,char*) ;

__attribute__((used)) static void
assert_is_open(mrb_state *mrb, mrb_input_stream_t *stream)
{
  if (stream->len < 0) {
    struct RClass *klass = mrb_class_get(mrb, "IOError");
    if (klass == ((void*)0))
      klass = E_RUNTIME_ERROR;
    mrb_raise(mrb, klass, "stream closed");
  }
}
