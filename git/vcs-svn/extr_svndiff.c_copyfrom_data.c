
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {size_t const len; scalar_t__ buf; } ;
struct window {TYPE_1__ data; int out; } ;


 int error (char*) ;
 int strbuf_add (int *,scalar_t__,size_t) ;
 scalar_t__ unsigned_add_overflows (size_t const,size_t) ;

__attribute__((used)) static int copyfrom_data(struct window *ctx, size_t *data_pos, size_t nbytes)
{
 const size_t pos = *data_pos;
 if (unsigned_add_overflows(pos, nbytes) ||
     pos + nbytes > ctx->data.len)
  return error("invalid delta: copies unavailable inline data");
 strbuf_add(&ctx->out, ctx->data.buf + pos, nbytes);
 *data_pos += nbytes;
 return 0;
}
