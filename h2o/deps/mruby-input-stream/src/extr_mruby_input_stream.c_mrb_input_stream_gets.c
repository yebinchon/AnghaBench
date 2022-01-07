
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int mrb_value ;
typedef int mrb_state ;
typedef scalar_t__ mrb_int ;
struct TYPE_5__ {scalar_t__ pos; scalar_t__ len; scalar_t__ base; } ;
typedef TYPE_1__ mrb_input_stream_t ;


 TYPE_1__* DATA_PTR (int ) ;
 int assert_is_open (int *,TYPE_1__*) ;
 int mrb_nil_value () ;
 int mrb_str_new (int *,scalar_t__,scalar_t__) ;
 scalar_t__ seek_char (TYPE_1__*,char) ;

__attribute__((used)) static mrb_value
mrb_input_stream_gets(mrb_state *mrb, mrb_value self)
{
  mrb_input_stream_t *stream = DATA_PTR(self);
  mrb_int pos, len;

  assert_is_open(mrb, stream);

  pos = stream->pos;
  len = seek_char(stream, '\n');
  if (len < 0) {
    return mrb_nil_value();
  }
  if (stream->pos + len < stream->len) {
    len++;
  }
  stream->pos += len;
  return mrb_str_new(mrb, (stream->base + pos), len);
}
