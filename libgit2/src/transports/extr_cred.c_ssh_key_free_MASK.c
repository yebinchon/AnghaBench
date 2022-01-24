#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct git_cred {int dummy; } ;
struct TYPE_5__ {struct TYPE_5__* publickey; struct TYPE_5__* passphrase; struct TYPE_5__* privatekey; struct TYPE_5__* username; } ;
typedef  TYPE_1__ git_cred_ssh_key ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,size_t) ; 
 size_t FUNC2 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC3(struct git_cred *cred)
{
	git_cred_ssh_key *c =
		(git_cred_ssh_key *)cred;

	FUNC0(c->username);

	if (c->privatekey) {
		/* Zero the memory which previously held the private key */
		size_t key_len = FUNC2(c->privatekey);
		FUNC1(c->privatekey, key_len);
		FUNC0(c->privatekey);
	}

	if (c->passphrase) {
		/* Zero the memory which previously held the passphrase */
		size_t pass_len = FUNC2(c->passphrase);
		FUNC1(c->passphrase, pass_len);
		FUNC0(c->passphrase);
	}

	if (c->publickey) {
		/* Zero the memory which previously held the public key */
		size_t key_len = FUNC2(c->publickey);
		FUNC1(c->publickey, key_len);
		FUNC0(c->publickey);
	}

	FUNC0(c);
}