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
struct ag71xx {int /*<<< orphan*/  lock; int /*<<< orphan*/  oom_timer; int /*<<< orphan*/  napi; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ag71xx*) ; 
 int /*<<< orphan*/  FUNC1 (struct ag71xx*) ; 
 int /*<<< orphan*/  FUNC2 (struct ag71xx*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC8(struct ag71xx *ag)
{
	unsigned long flags;

	FUNC6(&ag->lock, flags);

	FUNC5(ag->dev);

	FUNC1(ag);
	FUNC0(ag);

	FUNC4(&ag->napi);
	FUNC3(&ag->oom_timer);

	FUNC7(&ag->lock, flags);

	FUNC2(ag);
}