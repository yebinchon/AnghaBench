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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  id ; 
 int /*<<< orphan*/  idp ; 
 char* str_oid ; 

void FUNC3(void)
{
	FUNC1(0, FUNC2(&id, str_oid));
	FUNC0(FUNC2(&id, "deadbeefdeadbeefdeadbeefdeadbeefdeadbeef") < 0);

	FUNC0(FUNC2(&id, "deadbeef") < 0);
	FUNC1(-1, FUNC2(&id, "I'm not an oid.... :)"));

	FUNC1(0, FUNC2(&idp, "ae90f12eea699729ed0000000000000000000000"));
	FUNC1(0, FUNC2(&idp, "ae90f12eea699729ed"));
	FUNC0(FUNC2(&idp, "ae90f12eea699729ed1") < 0);
	FUNC0(FUNC2(&idp, "ae90f12eea699729ec") > 0);
	FUNC0(FUNC2(&idp, "deadbeefdeadbeefdeadbeefdeadbeefdeadbeef") < 0);

	FUNC0(FUNC2(&idp, "deadbeef") < 0);
	FUNC1(-1, FUNC2(&idp, "I'm not an oid.... :)"));
}