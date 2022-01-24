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
struct rename_data {int /*<<< orphan*/  config; int /*<<< orphan*/  name; scalar_t__ old_len; } ;
struct TYPE_3__ {scalar_t__ name; int /*<<< orphan*/  value; } ;
typedef  TYPE_1__ git_config_entry ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 size_t FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,size_t) ; 
 int FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(
	const git_config_entry *entry,
	void *payload)
{
	int error = 0;
	struct rename_data *data = (struct rename_data *)payload;
	size_t base_len = FUNC1(data->name);

	if (base_len > 0 &&
		!(error = FUNC2(data->name, entry->name + data->old_len)))
	{
		error = FUNC5(
			data->config, FUNC0(data->name), entry->value);

		FUNC3(data->name, base_len);
	}

	if (!error)
		error = FUNC4(data->config, entry->name);

	return error;
}