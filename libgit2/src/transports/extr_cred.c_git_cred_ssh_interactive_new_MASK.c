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
typedef  scalar_t__ git_cred_ssh_interactive_cb ;
struct TYPE_8__ {int /*<<< orphan*/  free; int /*<<< orphan*/  credtype; } ;
struct TYPE_7__ {TYPE_2__ parent; void* payload; scalar_t__ prompt_callback; struct TYPE_7__* username; } ;
typedef  TYPE_1__ git_cred_ssh_interactive ;
typedef  TYPE_2__ git_cred ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_CREDTYPE_SSH_INTERACTIVE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 TYPE_1__* FUNC2 (int,int) ; 
 TYPE_1__* FUNC3 (char const*) ; 
 int /*<<< orphan*/  ssh_interactive_free ; 

int FUNC4(
	git_cred **out,
	const char *username,
	git_cred_ssh_interactive_cb prompt_callback,
	void *payload)
{
	git_cred_ssh_interactive *c;

	FUNC1(out && username && prompt_callback);

	c = FUNC2(1, sizeof(git_cred_ssh_interactive));
	FUNC0(c);

	c->parent.credtype = GIT_CREDTYPE_SSH_INTERACTIVE;
	c->parent.free = ssh_interactive_free;

	c->username = FUNC3(username);
	FUNC0(c->username);

	c->prompt_callback = prompt_callback;
	c->payload = payload;

	*out = &c->parent;
	return 0;
}