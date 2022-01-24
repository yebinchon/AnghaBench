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
struct nl_sock {int dummy; } ;
struct nl_cache {int dummy; } ;
struct genl_family {int dummy; } ;

/* Variables and functions */
 int NLE_OBJ_NOTFOUND ; 
 int FUNC0 (struct nl_sock*,struct nl_cache**) ; 
 struct genl_family* FUNC1 (struct nl_cache*,char const*) ; 
 int FUNC2 (struct genl_family*) ; 
 int /*<<< orphan*/  FUNC3 (struct genl_family*) ; 
 int /*<<< orphan*/  FUNC4 (struct nl_cache*) ; 

int FUNC5(struct nl_sock *sk, const char *name)
{
	struct nl_cache *cache;
	struct genl_family *family;
	int err;

	if ((err = FUNC0(sk, &cache)) < 0)
		return err;

	family = FUNC1(cache, name);
	if (family == NULL) {
		err = -NLE_OBJ_NOTFOUND;
		goto errout;
	}

	err = FUNC2(family);
	FUNC3(family);
errout:
	FUNC4(cache);

	return err;
}