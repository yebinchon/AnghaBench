
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {size_t len; int * buf; } ;
struct window {TYPE_1__ out; } ;


 int error (char*) ;
 scalar_t__ parse_int (char const**,size_t*,char const*) ;
 int strbuf_addch (TYPE_1__*,int ) ;

__attribute__((used)) static int copyfrom_target(struct window *ctx, const char **instructions,
      size_t nbytes, const char *instructions_end)
{
 size_t offset;
 if (parse_int(instructions, &offset, instructions_end))
  return -1;
 if (offset >= ctx->out.len)
  return error("invalid delta: copies from the future");
 for (; nbytes > 0; nbytes--)
  strbuf_addch(&ctx->out, ctx->out.buf[offset++]);
 return 0;
}
