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
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  id ; 
 int /*<<< orphan*/  idp ; 
 char* str_oid ; 

void FUNC2(void)
{
	FUNC0(0, FUNC1(&id, str_oid));
	FUNC0(-1, FUNC1(&id, "deadbeefdeadbeefdeadbeefdeadbeefdeadbeef"));

	FUNC0(-1, FUNC1(&id, "deadbeef"));
	FUNC0(-1, FUNC1(&id, "I'm not an oid.... :)"));

	FUNC0(0, FUNC1(&idp, "ae90f12eea699729ed0000000000000000000000"));
	FUNC0(0, FUNC1(&idp, "ae90f12eea699729ed"));
	FUNC0(-1, FUNC1(&idp, "ae90f12eea699729ed1"));
	FUNC0(-1, FUNC1(&idp, "ae90f12eea699729ec"));
	FUNC0(-1, FUNC1(&idp, "deadbeefdeadbeefdeadbeefdeadbeefdeadbeef"));

	FUNC0(-1, FUNC1(&idp, "deadbeef"));
	FUNC0(-1, FUNC1(&idp, "I'm not an oid.... :)"));
}