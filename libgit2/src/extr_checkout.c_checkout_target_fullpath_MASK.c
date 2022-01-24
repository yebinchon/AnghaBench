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
typedef  int /*<<< orphan*/  git_buf ;
struct TYPE_3__ {int /*<<< orphan*/  target_path; int /*<<< orphan*/  target_len; } ;
typedef  TYPE_1__ checkout_data ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(
	git_buf **out, checkout_data *data, const char *path)
{
	FUNC1(&data->target_path, data->target_len);

	if (path && FUNC0(&data->target_path, path) < 0)
		return -1;

	*out = &data->target_path;

	return 0;
}