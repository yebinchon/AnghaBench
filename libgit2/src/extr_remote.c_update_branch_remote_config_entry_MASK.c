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
struct update_data {char const* old_remote_name; char const* new_remote_name; int /*<<< orphan*/  config; int /*<<< orphan*/ * member_0; } ;
typedef  int /*<<< orphan*/  git_repository ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,struct update_data*) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  update_config_entries_cb ; 

__attribute__((used)) static int FUNC2(
	git_repository *repo,
	const char *old_name,
	const char *new_name)
{
	int error;
	struct update_data data = { NULL };

	if ((error = FUNC1(&data.config, repo)) < 0)
		return error;

	data.old_remote_name = old_name;
	data.new_remote_name = new_name;

	return FUNC0(
		data.config, "branch\\..+\\.remote", update_config_entries_cb, &data);
}