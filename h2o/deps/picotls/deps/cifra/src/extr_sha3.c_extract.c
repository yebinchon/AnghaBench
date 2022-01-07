
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ uint16_t ;
struct TYPE_3__ {int ** A; } ;
typedef TYPE_1__ cf_sha3_context ;


 int memcpy (int *,int *,size_t) ;
 int write64_bi (int *,int *) ;

__attribute__((used)) static void extract(cf_sha3_context *ctx, uint8_t *out, size_t nbytes)
{
  uint16_t lanes = (nbytes + 7) / 8;

  for (uint16_t x = 0, y = 0, i = 0; i < lanes; i++)
  {
    if (nbytes >= 8)
    {
      write64_bi(&ctx->A[x][y], out);
      out += 8;
      nbytes -= 8;
    } else {
      uint8_t buf[8];
      write64_bi(&ctx->A[x][y], buf);
      memcpy(out, buf, nbytes);
      out += nbytes;
      nbytes = 0;
    }

    x++;
    if (x == 5)
    {
      y++;
      x = 0;
    }
  }
}
