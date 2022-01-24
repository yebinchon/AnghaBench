#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {TYPE_1__** A; } ;
typedef  TYPE_2__ cf_sha3_context ;
struct TYPE_9__ {int odd; int evn; } ;
typedef  TYPE_3__ cf_sha3_bi ;
struct TYPE_7__ {int odd; int evn; } ;

/* Variables and functions */
 size_t FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,TYPE_3__*) ; 

__attribute__((used)) static void FUNC2(cf_sha3_context *ctx)
{
  cf_sha3_bi C[5], D[5];

  for (int x = 0; x < 5; x++)
  {
    C[x].odd = ctx->A[x][0].odd ^ ctx->A[x][1].odd ^ ctx->A[x][2].odd ^ ctx->A[x][3].odd ^ ctx->A[x][4].odd;
    C[x].evn = ctx->A[x][0].evn ^ ctx->A[x][1].evn ^ ctx->A[x][2].evn ^ ctx->A[x][3].evn ^ ctx->A[x][4].evn;
  }

  for (int x = 0; x < 5; x++)
  {
    cf_sha3_bi r;
    FUNC1(&r, &C[FUNC0(x + 1)]);
    D[x].odd = C[FUNC0(x - 1)].odd ^ r.odd;
    D[x].evn = C[FUNC0(x - 1)].evn ^ r.evn;

    for (int y = 0; y < 5; y++)
    {
      ctx->A[x][y].odd ^= D[x].odd;
      ctx->A[x][y].evn ^= D[x].evn;
    }
  }
}