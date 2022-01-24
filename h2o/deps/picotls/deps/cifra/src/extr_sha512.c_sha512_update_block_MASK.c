#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  scalar_t__ uint64_t ;
struct TYPE_2__ {int /*<<< orphan*/  blocks; scalar_t__* H; } ;
typedef  TYPE_1__ cf_sha512_context ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__,scalar_t__,scalar_t__) ; 
 scalar_t__* K ; 
 scalar_t__ FUNC3 (scalar_t__,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/  const*) ; 

__attribute__((used)) static void FUNC7(void *vctx, const uint8_t *inp)
{
  cf_sha512_context *ctx = vctx;

  uint64_t W[16];

  uint64_t a = ctx->H[0],
           b = ctx->H[1],
           c = ctx->H[2],
           d = ctx->H[3],
           e = ctx->H[4],
           f = ctx->H[5],
           g = ctx->H[6],
           h = ctx->H[7],
           Wt;

  size_t t;
  for (t = 0; t < 80; t++)
  {
    if (t < 16)
    {
      W[t] = Wt = FUNC6(inp);
      inp += 8;
    } else {
      Wt = FUNC5(W[(t - 2) % 16]) +
           W[(t - 7) % 16] +
           FUNC4(W[(t - 15) % 16]) +
           W[(t - 16) % 16];
      W[t % 16] = Wt;
    }

    uint64_t T1 = h + FUNC1(e) + FUNC2(e, f, g) + K[t] + Wt;
    uint64_t T2 = FUNC0(a) + FUNC3(a, b, c);
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