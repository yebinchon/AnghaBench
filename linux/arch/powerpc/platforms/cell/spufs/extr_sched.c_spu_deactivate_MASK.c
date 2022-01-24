#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct spu_context {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MAX_PRIO ; 
 int /*<<< orphan*/  FUNC0 (struct spu_context*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct spu_context*) ; 
 int /*<<< orphan*/  spu_deactivate__enter ; 

void FUNC2(struct spu_context *ctx)
{
	FUNC1(spu_deactivate__enter, ctx);
	FUNC0(ctx, 1, MAX_PRIO);
}