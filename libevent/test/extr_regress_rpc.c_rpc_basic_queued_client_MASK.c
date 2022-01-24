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
struct msg {int dummy; } ;
struct kill {int dummy; } ;
struct evrpc_pool {int dummy; } ;
struct evrpc_base {int dummy; } ;
struct evhttp {int dummy; } ;
typedef  int /*<<< orphan*/  ev_uint16_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct evrpc_pool*,struct msg*,struct kill*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct msg*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  GotKillCb ; 
 int /*<<< orphan*/  GotKillCbTwo ; 
 int /*<<< orphan*/  Message ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct evhttp*) ; 
 int /*<<< orphan*/  FUNC4 (struct evrpc_pool*) ; 
 int /*<<< orphan*/  from_name ; 
 int /*<<< orphan*/  FUNC5 (struct kill*) ; 
 struct kill* FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (struct msg*) ; 
 struct msg* FUNC8 () ; 
 struct evrpc_pool* FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct evhttp**,int /*<<< orphan*/ *,struct evrpc_base**) ; 
 int /*<<< orphan*/  FUNC11 (struct evrpc_base*) ; 
 int test_ok ; 
 int /*<<< orphan*/  to_name ; 
 int /*<<< orphan*/  FUNC12 (int) ; 

__attribute__((used)) static void
FUNC13(void)
{
	ev_uint16_t port;
	struct evhttp *http = NULL;
	struct evrpc_base *base = NULL;
	struct evrpc_pool *pool = NULL;
	struct msg *msg=NULL;
	struct kill *kill_one=NULL, *kill_two=NULL;

	FUNC10(&http, &port, &base);

	pool = FUNC9(port);
	FUNC12(pool);

	/* set up the basic message */
	msg = FUNC8();
	FUNC12(msg);
	FUNC1(msg, from_name, "niels");
	FUNC1(msg, to_name, "tester");

	kill_one = FUNC6();
	kill_two = FUNC6();

	FUNC0(Message, pool, msg, kill_one,  GotKillCbTwo, NULL);
	FUNC0(Message, pool, msg, kill_two,  GotKillCb, NULL);

	test_ok = 0;

	FUNC2();

	FUNC11(base);

	FUNC12(test_ok == 2);

end:
	if (msg)
		FUNC7(msg);
	if (kill_one)
		FUNC5(kill_one);
	if (kill_two)
		FUNC5(kill_two);

	if (pool)
		FUNC4(pool);
	if (http)
		FUNC3(http);
}