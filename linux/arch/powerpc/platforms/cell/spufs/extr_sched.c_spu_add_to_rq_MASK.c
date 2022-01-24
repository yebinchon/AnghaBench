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
struct spu_context {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  runq_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct spu_context*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 TYPE_1__* spu_prio ; 

__attribute__((used)) static void FUNC3(struct spu_context *ctx)
{
	FUNC1(&spu_prio->runq_lock);
	FUNC0(ctx);
	FUNC2(&spu_prio->runq_lock);
}