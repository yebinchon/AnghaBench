#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  free; int /*<<< orphan*/  credtype; } ;
struct TYPE_7__ {TYPE_2__ parent; struct TYPE_7__* username; void* password; } ;
typedef  TYPE_1__ git_cred_userpass_plaintext ;
typedef  TYPE_2__ git_cred ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_CREDTYPE_USERPASS_PLAINTEXT ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 TYPE_1__* FUNC3 (int) ; 
 void* FUNC4 (char const*) ; 
 int /*<<< orphan*/  plaintext_free ; 

int FUNC5(
	git_cred **cred,
	const char *username,
	const char *password)
{
	git_cred_userpass_plaintext *c;

	FUNC1(cred && username && password);

	c = FUNC3(sizeof(git_cred_userpass_plaintext));
	FUNC0(c);

	c->parent.credtype = GIT_CREDTYPE_USERPASS_PLAINTEXT;
	c->parent.free = plaintext_free;
	c->username = FUNC4(username);

	if (!c->username) {
		FUNC2(c);
		return -1;
	}

	c->password = FUNC4(password);

	if (!c->password) {
		FUNC2(c->username);
		FUNC2(c);
		return -1;
	}

	*cred = &c->parent;
	return 0;
}