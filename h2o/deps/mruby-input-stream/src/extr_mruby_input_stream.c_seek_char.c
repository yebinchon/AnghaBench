
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t mrb_int ;
struct TYPE_3__ {char* base; size_t len; size_t pos; } ;
typedef TYPE_1__ mrb_input_stream_t ;



__attribute__((used)) static mrb_int
seek_char(mrb_input_stream_t *stream, char chr){
  const char *base = stream->base;
  size_t len = stream->len;
  mrb_int pos = stream->pos;
  const char *end = base + len;
  const char *start = base + pos;
  const char *s = start;

  if (pos >= len) {
    return -1;
  }

  while (s < end) {
    if (*s == chr) {
      break;
    }
    s++;
  }
  return (s - start);
}
