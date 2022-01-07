
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int mrb_value ;
typedef int mrb_state ;
struct TYPE_4__ {scalar_t__ pos; } ;
typedef TYPE_1__ mrb_input_stream_t ;


 TYPE_1__* DATA_PTR (int ) ;
 int assert_is_open (int *,TYPE_1__*) ;

__attribute__((used)) static mrb_value
mrb_input_stream_rewind(mrb_state *mrb, mrb_value self)
{
  mrb_input_stream_t *stream = DATA_PTR(self);
  assert_is_open(mrb, stream);
  stream->pos = 0;
  return self;
}
