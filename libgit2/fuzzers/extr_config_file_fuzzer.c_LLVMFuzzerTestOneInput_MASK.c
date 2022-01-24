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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  git_config_backend ;
typedef  int /*<<< orphan*/  git_config ;

/* Variables and functions */
 int /*<<< orphan*/  foreach_cb ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ **,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ **) ; 

int FUNC6(const uint8_t *data, size_t size)
{
	git_config *cfg = NULL;
	git_config_backend *backend = NULL;
	int err = 0;

	if ((err = FUNC5(&cfg)) != 0) {
		goto out;
	}

	if ((err = FUNC2(&backend, (const char*)data, size)) != 0) {
		goto out;
	}
	if ((err = FUNC0(cfg, backend, 0, NULL, 0)) != 0) {
		goto out;
	}
	/* Now owned by the config */
	backend = NULL;

	FUNC3(cfg, foreach_cb, NULL);
 out:
	FUNC1(backend);
	FUNC4(cfg);

	return 0;
}