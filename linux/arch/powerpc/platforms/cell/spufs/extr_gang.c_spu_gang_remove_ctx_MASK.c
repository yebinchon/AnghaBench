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
struct spu_gang {int /*<<< orphan*/  mutex; int /*<<< orphan*/  contexts; int /*<<< orphan*/  aff_flags; } ;
struct spu_context {int /*<<< orphan*/  gang_list; int /*<<< orphan*/  aff_list; struct spu_gang* gang; } ;

/* Variables and functions */
 int /*<<< orphan*/  AFF_OFFSETS_SET ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct spu_gang*) ; 

void FUNC6(struct spu_gang *gang, struct spu_context *ctx)
{
	FUNC3(&gang->mutex);
	FUNC0(ctx->gang != gang);
	if (!FUNC2(&ctx->aff_list)) {
		FUNC1(&ctx->aff_list);
		gang->aff_flags &= ~AFF_OFFSETS_SET;
	}
	FUNC1(&ctx->gang_list);
	gang->contexts--;
	FUNC4(&gang->mutex);

	FUNC5(gang);
}