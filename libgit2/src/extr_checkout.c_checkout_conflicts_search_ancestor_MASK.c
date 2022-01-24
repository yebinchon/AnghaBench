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
struct TYPE_3__ {int /*<<< orphan*/  update_conflicts; } ;
typedef  TYPE_1__ checkout_data ;
typedef  int /*<<< orphan*/  checkout_conflictdata ;

/* Variables and functions */
 int /*<<< orphan*/  checkout_conflicts_cmp_ancestor ; 
 scalar_t__ FUNC0 (size_t*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,size_t) ; 

__attribute__((used)) static checkout_conflictdata *FUNC2(
	checkout_data *data,
	const char *path)
{
	size_t pos;

	if (FUNC0(&pos, &data->update_conflicts, checkout_conflicts_cmp_ancestor, path) < 0)
		return NULL;

	return FUNC1(&data->update_conflicts, pos);
}