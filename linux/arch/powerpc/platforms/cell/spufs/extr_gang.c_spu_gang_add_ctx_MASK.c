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
struct spu_gang {int /*<<< orphan*/  mutex; int /*<<< orphan*/  contexts; int /*<<< orphan*/  list; } ;
struct spu_context {int /*<<< orphan*/  gang_list; int /*<<< orphan*/  gang; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct spu_gang*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(struct spu_gang *gang, struct spu_context *ctx)
{
	FUNC2(&gang->mutex);
	ctx->gang = FUNC0(gang);
	FUNC1(&ctx->gang_list, &gang->list);
	gang->contexts++;
	FUNC3(&gang->mutex);
}