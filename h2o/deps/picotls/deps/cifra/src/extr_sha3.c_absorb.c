
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint16_t ;
struct TYPE_7__ {TYPE_1__** A; } ;
typedef TYPE_2__ cf_sha3_context ;
struct TYPE_8__ {int evn; int odd; } ;
typedef TYPE_3__ cf_sha3_bi ;
struct TYPE_6__ {int evn; int odd; } ;


 int read64_bi (TYPE_3__*,int const*) ;

__attribute__((used)) static void absorb(cf_sha3_context *ctx, const uint8_t *data, uint16_t sz)
{
  uint16_t lanes = sz / 8;

  for (uint16_t x = 0, y = 0, i = 0; i < lanes; i++)
  {
    cf_sha3_bi bi;
    read64_bi(&bi, data);
    ctx->A[x][y].odd ^= bi.odd;
    ctx->A[x][y].evn ^= bi.evn;
    data += 8;

    x++;
    if (x == 5)
    {
      y++;
      x = 0;
    }
  }
}
