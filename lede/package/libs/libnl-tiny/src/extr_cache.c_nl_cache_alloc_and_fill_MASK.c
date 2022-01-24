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
struct nl_cache_ops {int dummy; } ;
struct nl_cache {int dummy; } ;

/* Variables and functions */
 int NLE_NOMEM ; 
 struct nl_cache* FUNC0 (struct nl_cache_ops*) ; 
 int /*<<< orphan*/  FUNC1 (struct nl_cache*) ; 
 int FUNC2 (struct nl_sock*,struct nl_cache*) ; 

int FUNC3(struct nl_cache_ops *ops, struct nl_sock *sock,
			    struct nl_cache **result)
{
	struct nl_cache *cache;
	int err;
	
	if (!(cache = FUNC0(ops)))
		return -NLE_NOMEM;

	if (sock && (err = FUNC2(sock, cache)) < 0) {
		FUNC1(cache);
		return err;
	}

	*result = cache;
	return 0;
}