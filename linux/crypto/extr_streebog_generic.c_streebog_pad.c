
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct streebog_state {int fillsize; int* buffer; } ;


 int STREEBOG_BLOCK_SIZE ;
 int memset (int*,int ,int) ;

__attribute__((used)) static void streebog_pad(struct streebog_state *ctx)
{
 if (ctx->fillsize >= STREEBOG_BLOCK_SIZE)
  return;

 memset(ctx->buffer + ctx->fillsize, 0,
        sizeof(ctx->buffer) - ctx->fillsize);

 ctx->buffer[ctx->fillsize] = 1;
}
