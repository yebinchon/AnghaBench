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
 int FUNC1 (struct genl_family*,char const*) ; 
 struct genl_family* FUNC2 (struct nl_cache*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (struct genl_family*) ; 
 int /*<<< orphan*/  FUNC4 (struct nl_cache*) ; 

int FUNC5(struct nl_sock *sk, const char *family_name,
	const char *grp_name)
{
	struct nl_cache *cache;
	struct genl_family *family;
	int err;

	if ((err = FUNC0(sk, &cache)) < 0)
		return err;

	family = FUNC2(cache, family_name);
	if (family == NULL) {
		err = -NLE_OBJ_NOTFOUND;
		goto errout;
	}

	err = FUNC1(family, grp_name);
	FUNC3(family);
errout:
	FUNC4(cache);

	return err;
}