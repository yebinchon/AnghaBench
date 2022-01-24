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
struct sfe_ipv4 {int /*<<< orphan*/  lock; int /*<<< orphan*/  sync_rule_callback; } ;
typedef  int /*<<< orphan*/  sfe_sync_rule_callback_t ;

/* Variables and functions */
 struct sfe_ipv4 __si ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(sfe_sync_rule_callback_t sync_rule_callback)
{
	struct sfe_ipv4 *si = &__si;

	FUNC1(&si->lock);
	FUNC0(si->sync_rule_callback, sync_rule_callback);
	FUNC2(&si->lock);
}