
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct window {TYPE_1__* in; int out; } ;
struct TYPE_4__ {scalar_t__ buf; } ;
struct TYPE_3__ {size_t width; TYPE_2__ buf; } ;


 int error (char*) ;
 scalar_t__ parse_int (char const**,size_t*,char const*) ;
 int strbuf_add (int *,scalar_t__,size_t) ;
 scalar_t__ unsigned_add_overflows (size_t,size_t) ;

__attribute__((used)) static int copyfrom_source(struct window *ctx, const char **instructions,
      size_t nbytes, const char *insns_end)
{
 size_t offset;
 if (parse_int(instructions, &offset, insns_end))
  return -1;
 if (unsigned_add_overflows(offset, nbytes) ||
     offset + nbytes > ctx->in->width)
  return error("invalid delta: copies source data outside view");
 strbuf_add(&ctx->out, ctx->in->buf.buf + offset, nbytes);
 return 0;
}
