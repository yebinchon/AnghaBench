#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/ * baseline; } ;
struct TYPE_5__ {int /*<<< orphan*/  attr_session; int /*<<< orphan*/ * mkdir_map; int /*<<< orphan*/ * index; int /*<<< orphan*/  tmp; int /*<<< orphan*/  target_path; int /*<<< orphan*/ * pfx; int /*<<< orphan*/  update_conflicts; int /*<<< orphan*/  remove_conflicts; int /*<<< orphan*/  pool; int /*<<< orphan*/  removes; TYPE_1__ opts; scalar_t__ opts_free_baseline; } ;
typedef  TYPE_2__ checkout_data ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC9(checkout_data *data)
{
	if (data->opts_free_baseline) {
		FUNC6(data->opts.baseline);
		data->opts.baseline = NULL;
	}

	FUNC7(&data->removes);
	FUNC4(&data->pool);

	FUNC8(&data->remove_conflicts);
	FUNC8(&data->update_conflicts);

	FUNC0(data->pfx);
	data->pfx = NULL;

	FUNC2(&data->target_path);
	FUNC2(&data->tmp);

	FUNC3(data->index);
	data->index = NULL;

	FUNC5(data->mkdir_map);
	data->mkdir_map = NULL;

	FUNC1(&data->attr_session);
}