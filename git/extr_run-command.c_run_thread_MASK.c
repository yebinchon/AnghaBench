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
struct async {intptr_t (* proc ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;int /*<<< orphan*/  data; int /*<<< orphan*/  proc_out; int /*<<< orphan*/  proc_in; scalar_t__ isolate_sigpipe; } ;
typedef  int /*<<< orphan*/  sigset_t ;

/* Variables and functions */
 int /*<<< orphan*/  SIGPIPE ; 
 int /*<<< orphan*/  SIG_BLOCK ; 
 int /*<<< orphan*/  async_key ; 
 intptr_t FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct async*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 intptr_t FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void *FUNC6(void *data)
{
	struct async *async = data;
	intptr_t ret;

	if (async->isolate_sigpipe) {
		sigset_t mask;
		FUNC4(&mask);
		FUNC3(&mask, SIGPIPE);
		if (FUNC2(SIG_BLOCK, &mask, NULL) < 0) {
			ret = FUNC0("unable to block SIGPIPE in async thread");
			return (void *)ret;
		}
	}

	FUNC1(async_key, async);
	ret = async->proc(async->proc_in, async->proc_out, async->data);
	return (void *)ret;
}