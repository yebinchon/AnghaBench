#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {void* prpctx; TYPE_2__ const* prp; int /*<<< orphan*/  P; int /*<<< orphan*/  B; } ;
typedef  TYPE_1__ uint8_t ;
struct TYPE_11__ {int blocksz; int /*<<< orphan*/  (* encrypt ) (void*,TYPE_1__*,TYPE_1__*) ;} ;
typedef  TYPE_2__ cf_prp ;
typedef  int /*<<< orphan*/  cf_gf128 ;
typedef  TYPE_1__ cf_cmac ;

/* Variables and functions */
 int CF_MAXBLOCK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC5 (void*,TYPE_1__*,TYPE_1__*) ; 

void FUNC6(cf_cmac *ctx, const cf_prp *prp, void *prpctx)
{
  uint8_t L[CF_MAXBLOCK];
  FUNC0(prp->blocksz == 16);

  FUNC4(ctx, sizeof *ctx);

  /* L = E_K(0^n) */
  FUNC4(L, prp->blocksz);
  prp->encrypt(prpctx, L, L);

  /* B = 2L */
  cf_gf128 gf;
  FUNC2(L, gf);
  FUNC1(gf, gf);
  FUNC3(gf, ctx->B);

  /* P = 4L */
  FUNC1(gf, gf);
  FUNC3(gf, ctx->P);

  ctx->prp = prp;
  ctx->prpctx = prpctx;
}