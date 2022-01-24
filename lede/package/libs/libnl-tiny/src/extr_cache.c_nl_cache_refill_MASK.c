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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,struct nl_cache*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct nl_cache*) ; 
 int /*<<< orphan*/  FUNC2 (struct nl_cache*) ; 
 int FUNC3 (struct nl_sock*,struct nl_cache*) ; 
 int FUNC4 (struct nl_sock*,struct nl_cache*) ; 

int FUNC5(struct nl_sock *sk, struct nl_cache *cache)
{
	int err;

	err = FUNC4(sk, cache);
	if (err < 0)
		return err;

	FUNC0(2, "Upading cache %p <%s>, request sent, waiting for dump...\n",
	       cache, FUNC2(cache));
	FUNC1(cache);

	return FUNC3(sk, cache);
}