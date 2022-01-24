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
struct repository {int dummy; } ;

/* Variables and functions */
 int CONFIG_INVALID_KEY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct repository*,char*) ; 
 int /*<<< orphan*/  config_print_callback ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (char const*,char**,int /*<<< orphan*/ *) ; 

int FUNC3(struct repository *repo, const char *key)
{
	int ret;
	char *store_key;

	ret = FUNC2(key, &store_key, NULL);
	if (ret < 0)
		return CONFIG_INVALID_KEY;

	FUNC0(config_print_callback, repo, store_key);

	FUNC1(store_key);
	return 0;
}