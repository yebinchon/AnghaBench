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
typedef  int /*<<< orphan*/  git_config_level_t ;
typedef  int /*<<< orphan*/  git_config ;
typedef  int /*<<< orphan*/  backend_internal ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ **,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ **) ; 

int FUNC4(
	git_config **cfg_out,
	const git_config *cfg_parent,
	git_config_level_t level)
{
	git_config *cfg;
	backend_internal *internal;
	int res;

	if ((res = FUNC0(&internal, cfg_parent, level)) < 0)
		return res;

	if ((res = FUNC3(&cfg)) < 0)
		return res;

	if ((res = FUNC1(cfg, internal, level, true)) < 0) {
		FUNC2(cfg);
		return res;
	}

	*cfg_out = cfg;

	return 0;
}