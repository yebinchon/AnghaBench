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
typedef  int /*<<< orphan*/  u32 ;
struct vas_window {int /*<<< orphan*/  num_txwins; } ;
struct vas_instance {int /*<<< orphan*/  mutex; scalar_t__* rxwin; } ;
typedef  enum vas_cop_type { ____Placeholder_vas_cop_type } vas_cop_type ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 struct vas_window* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct vas_window*) ; 
 int VAS_COP_TYPE_FTW ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct vas_window* FUNC3 (struct vas_instance*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct vas_window *FUNC6(struct vas_instance *vinst,
			enum vas_cop_type cop, u32 pswid)
{
	struct vas_window *rxwin;

	FUNC4(&vinst->mutex);

	if (cop == VAS_COP_TYPE_FTW)
		rxwin = FUNC3(vinst, pswid);
	else
		rxwin = vinst->rxwin[cop] ?: FUNC0(-EINVAL);

	if (!FUNC1(rxwin))
		FUNC2(&rxwin->num_txwins);

	FUNC5(&vinst->mutex);

	return rxwin;
}