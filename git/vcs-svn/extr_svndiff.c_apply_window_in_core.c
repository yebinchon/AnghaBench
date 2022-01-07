
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {size_t len; } ;
struct TYPE_3__ {char* buf; int len; } ;
struct window {TYPE_2__ data; TYPE_1__ instructions; } ;


 int error (char*) ;
 scalar_t__ execute_one_instruction (struct window*,char const**,size_t*) ;

__attribute__((used)) static int apply_window_in_core(struct window *ctx)
{
 const char *instructions;
 size_t data_pos = 0;





 for (instructions = ctx->instructions.buf;
      instructions != ctx->instructions.buf + ctx->instructions.len;
      )
  if (execute_one_instruction(ctx, &instructions, &data_pos))
   return -1;
 if (data_pos != ctx->data.len)
  return error("invalid delta: does not copy all inline data");
 return 0;
}
