#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  git_credtype_t ;
struct TYPE_7__ {int /*<<< orphan*/  free; int /*<<< orphan*/  credtype; } ;
struct TYPE_6__ {TYPE_2__ parent; struct TYPE_6__* passphrase; struct TYPE_6__* publickey; struct TYPE_6__* privatekey; struct TYPE_6__* username; } ;
typedef  TYPE_1__ git_cred_ssh_key ;
typedef  TYPE_2__ git_cred ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC2 (int,int) ; 
 void* FUNC3 (char const*) ; 
 int /*<<< orphan*/  ssh_key_free ; 

__attribute__((used)) static int FUNC4(
	git_cred **cred,
	const char *username,
	const char *publickey,
	const char *privatekey,
	const char *passphrase,
	git_credtype_t credtype)
{
	git_cred_ssh_key *c;

	FUNC1(username && cred && privatekey);

	c = FUNC2(1, sizeof(git_cred_ssh_key));
	FUNC0(c);

	c->parent.credtype = credtype;
	c->parent.free = ssh_key_free;

	c->username = FUNC3(username);
	FUNC0(c->username);

	c->privatekey = FUNC3(privatekey);
	FUNC0(c->privatekey);

	if (publickey) {
		c->publickey = FUNC3(publickey);
		FUNC0(c->publickey);
	}

	if (passphrase) {
		c->passphrase = FUNC3(passphrase);
		FUNC0(c->passphrase);
	}

	*cred = &c->parent;
	return 0;
}