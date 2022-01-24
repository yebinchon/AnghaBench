#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {char* member_0; char* member_1; int /*<<< orphan*/ * username; } ;
typedef  TYPE_1__ git_cred_userpass_payload ;
typedef  int /*<<< orphan*/  git_cred ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_CREDTYPE_USERPASS_PLAINTEXT ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,TYPE_1__*) ; 

void FUNC5(void)
{
	git_cred *cred;
	git_cred_userpass_payload payload = {"alice", "password"};

	FUNC1(FUNC4(&cred, NULL, NULL, GIT_CREDTYPE_USERPASS_PLAINTEXT, &payload));
	FUNC0("alice", FUNC3(cred));
	FUNC2(cred);

	FUNC1(FUNC4(&cred, NULL, "bob", GIT_CREDTYPE_USERPASS_PLAINTEXT, &payload));
	FUNC0("alice", FUNC3(cred));
	FUNC2(cred);

	payload.username = NULL;
	FUNC1(FUNC4(&cred, NULL, "bob", GIT_CREDTYPE_USERPASS_PLAINTEXT, &payload));
	FUNC0("bob", FUNC3(cred));
	FUNC2(cred);
}