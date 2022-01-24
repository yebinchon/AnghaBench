#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct nl_sock {int dummy; } ;
struct nl_cache {TYPE_1__* c_ops; } ;
struct TYPE_2__ {int (* co_request_update ) (struct nl_cache*,struct nl_sock*) ;} ;

/* Variables and functions */
 int NLE_OPNOTSUPP ; 
 int /*<<< orphan*/  FUNC0 (int,char*,struct nl_cache*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct nl_cache*) ; 
 int FUNC2 (struct nl_cache*,struct nl_sock*) ; 

int FUNC3(struct nl_sock *sk, struct nl_cache *cache)
{
	FUNC0(2, "Requesting dump from kernel for cache %p <%s>...\n",
	          cache, FUNC1(cache));

	if (cache->c_ops->co_request_update == NULL)
		return -NLE_OPNOTSUPP;

	return cache->c_ops->co_request_update(cache, sk);
}