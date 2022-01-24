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
typedef  int /*<<< orphan*/  git_cred ;

/* Variables and functions */
 unsigned int GIT_CREDTYPE_SSH_KEY ; 
 unsigned int GIT_CREDTYPE_USERNAME ; 
 int /*<<< orphan*/  GIT_ERROR_NET ; 
 int /*<<< orphan*/  FUNC0 (void*) ; 
 int /*<<< orphan*/  _remote_ssh_passphrase ; 
 int /*<<< orphan*/  _remote_ssh_privkey ; 
 int /*<<< orphan*/  _remote_ssh_pubkey ; 
 int /*<<< orphan*/  _remote_user ; 
 int FUNC1 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC4(git_cred **cred, const char *url, const char *user_from_url,
		   unsigned int allowed_types, void *payload)
{
	FUNC0(url); FUNC0(user_from_url); FUNC0(payload);

	if (allowed_types & GIT_CREDTYPE_USERNAME)
		return FUNC2(cred, _remote_user);

	if (allowed_types & GIT_CREDTYPE_SSH_KEY)
		return FUNC1(cred,
			_remote_user, _remote_ssh_pubkey,
			_remote_ssh_privkey, _remote_ssh_passphrase);

	FUNC3(GIT_ERROR_NET, "unexpected cred type");
	return -1;
}