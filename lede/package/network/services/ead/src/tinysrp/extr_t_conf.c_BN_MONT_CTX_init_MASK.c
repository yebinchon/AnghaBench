#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ flags; int /*<<< orphan*/  Ni; int /*<<< orphan*/  N; int /*<<< orphan*/  RR; scalar_t__ ri; } ;
typedef  TYPE_1__ BN_MONT_CTX ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 

void FUNC1(BN_MONT_CTX *ctx)
	{
	ctx->ri=0;
	FUNC0(&(ctx->RR));
	FUNC0(&(ctx->N));
	FUNC0(&(ctx->Ni));
	ctx->flags=0;
	}