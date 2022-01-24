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
struct TYPE_5__ {struct TYPE_5__* password; struct TYPE_5__* username; } ;
typedef  TYPE_1__ git_cred_userpass_plaintext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,size_t) ; 
 size_t FUNC2 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC3(struct git_cred *cred)
{
	git_cred_userpass_plaintext *c = (git_cred_userpass_plaintext *)cred;

	FUNC0(c->username);

	/* Zero the memory which previously held the password */
	if (c->password) {
		size_t pass_len = FUNC2(c->password);
		FUNC1(c->password, pass_len);
		FUNC0(c->password);
	}

	FUNC0(c);
}