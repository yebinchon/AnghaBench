
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int mrb_value ;
typedef int mrb_state ;
typedef int mrb_int ;
struct TYPE_4__ {int pos; char* base; int len; } ;
typedef TYPE_1__ mrb_input_stream_t ;


 TYPE_1__* DATA_PTR (int ) ;
 int assert_is_open (int *,TYPE_1__*) ;
 int mrb_get_args (int *,char*,int*,int *) ;
 int mrb_nil_value () ;
 int mrb_str_cat (int *,int ,char const*,int) ;
 int mrb_str_new (int *,char const*,int) ;
 int mrb_str_new_lit (int *,char*) ;

__attribute__((used)) static mrb_value
mrb_input_stream_read(mrb_state *mrb, mrb_value self)
{
  mrb_int len;
  mrb_value buf;
  mrb_int n = mrb_get_args(mrb, "|iS", &len, &buf), pos;
  mrb_input_stream_t *stream = DATA_PTR(self);
  const char *start;

  assert_is_open(mrb, stream);

  pos = stream->pos;
  start = stream->base + pos;

  if (pos >= stream->len) {
    return n == 0 ? mrb_str_new_lit(mrb, "") : mrb_nil_value();
  }
  if (n == 0) {
    stream->pos = stream->len;
    return mrb_str_new(mrb, start, stream->len - pos);
  } else {
    mrb_int newpos = pos + len;
    if (newpos > stream->len) {
      newpos = stream->len;
    }
    stream->pos = newpos;
    if (n == 1) {
      return mrb_str_new(mrb, start, newpos - pos);
    } else {
      return mrb_str_cat(mrb, buf, start, newpos - pos);
    }
  }
}
