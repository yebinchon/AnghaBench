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
struct mdesc_handle {int /*<<< orphan*/  refcnt; } ;

/* Variables and functions */
 struct mdesc_handle* cur_mdesc ; 
 int /*<<< orphan*/  mdesc_lock ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

struct mdesc_handle *FUNC3(void)
{
	struct mdesc_handle *hp;
	unsigned long flags;

	FUNC1(&mdesc_lock, flags);
	hp = cur_mdesc;
	if (hp)
		FUNC0(&hp->refcnt);
	FUNC2(&mdesc_lock, flags);

	return hp;
}