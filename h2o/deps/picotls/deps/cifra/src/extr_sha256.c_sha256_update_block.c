
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ uint32_t ;
struct TYPE_2__ {int blocks; scalar_t__* H; } ;
typedef TYPE_1__ cf_sha256_context ;


 scalar_t__ BSIG0 (scalar_t__) ;
 scalar_t__ BSIG1 (scalar_t__) ;
 scalar_t__ CH (scalar_t__,scalar_t__,scalar_t__) ;
 scalar_t__* K ;
 scalar_t__ MAJ (scalar_t__,scalar_t__,scalar_t__) ;
 scalar_t__ SSIG0 (scalar_t__) ;
 scalar_t__ SSIG1 (scalar_t__) ;
 scalar_t__ read32_be (int const*) ;

__attribute__((used)) static void sha256_update_block(void *vctx, const uint8_t *inp)
{
  cf_sha256_context *ctx = vctx;


  uint32_t W[16];

  uint32_t a = ctx->H[0],
           b = ctx->H[1],
           c = ctx->H[2],
           d = ctx->H[3],
           e = ctx->H[4],
           f = ctx->H[5],
           g = ctx->H[6],
           h = ctx->H[7],
           Wt;

  size_t t;
  for (t = 0; t < 64; t++)
  {







    if (t < 16)
    {
      W[t] = Wt = read32_be(inp);
      inp += 4;
    } else {
      Wt = SSIG1(W[(t - 2) % 16]) +
           W[(t - 7) % 16] +
           SSIG0(W[(t - 15) % 16]) +
           W[(t - 16) % 16];
      W[t % 16] = Wt;
    }

    uint32_t T1 = h + BSIG1(e) + CH(e, f, g) + K[t] + Wt;
    uint32_t T2 = BSIG0(a) + MAJ(a, b, c);
    h = g;
    g = f;
    f = e;
    e = d + T1;
    d = c;
    c = b;
    b = a;
    a = T1 + T2;
  }

  ctx->H[0] += a;
  ctx->H[1] += b;
  ctx->H[2] += c;
  ctx->H[3] += d;
  ctx->H[4] += e;
  ctx->H[5] += f;
  ctx->H[6] += g;
  ctx->H[7] += h;

  ctx->blocks++;
}
