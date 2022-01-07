
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
typedef int partial ;
typedef int norx32_ctx ;
struct TYPE_4__ {int member_1; int * member_0; } ;
typedef TYPE_1__ blockctx ;


 int RATE_BYTES ;
 int cf_blockwise_accumulate (int*,size_t*,int,int const*,size_t,int ,TYPE_1__*) ;
 int input_block ;
 int input_block_final (TYPE_1__*,int*) ;
 int memset (int*,int ,int) ;

__attribute__((used)) static void input(norx32_ctx *ctx, uint32_t type,
                  const uint8_t *buf, size_t nbuf)
{
  uint8_t partial[RATE_BYTES];
  size_t npartial = 0;
  blockctx bctx = { ctx, type };


  cf_blockwise_accumulate(partial, &npartial, sizeof partial,
                          buf, nbuf,
                          input_block,
                          &bctx);


  memset(partial + npartial, 0, sizeof(partial) - npartial);
  partial[npartial] = 0x01;
  partial[sizeof(partial) - 1] ^= 0x80;

  input_block_final(&bctx, partial);
}
