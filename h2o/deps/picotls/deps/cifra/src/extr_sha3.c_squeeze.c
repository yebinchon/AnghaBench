
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_5__ {int rate; } ;
typedef TYPE_1__ cf_sha3_context ;


 size_t MIN (size_t,int ) ;
 int assert (int) ;
 int extract (TYPE_1__*,int *,size_t) ;
 int permute (TYPE_1__*) ;

__attribute__((used)) static void squeeze(cf_sha3_context *ctx, uint8_t *out, size_t nbytes)
{
  while (nbytes)
  {
    size_t take = MIN(nbytes, ctx->rate);
    extract(ctx, out, take);
    out += take;
    nbytes -= take;

    assert(nbytes == 0);
  }
}
