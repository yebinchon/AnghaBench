
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_4__ {int rate; int capacity; } ;
typedef TYPE_1__ cf_sha3_context ;


 int mem_clean (TYPE_1__*,int) ;

__attribute__((used)) static void sha3_init(cf_sha3_context *ctx, uint16_t rate_bits, uint16_t capacity_bits)
{
  mem_clean(ctx, sizeof *ctx);
  ctx->rate = rate_bits / 8;
  ctx->capacity = capacity_bits / 8;
}
