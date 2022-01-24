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
 int /*<<< orphan*/  _record_cbs_data ; 
 int /*<<< orphan*/ * _remote ; 
 int /*<<< orphan*/  _remote_default ; 
 int /*<<< orphan*/  _remote_pass ; 
 int /*<<< orphan*/  _remote_ssh_key ; 
 int /*<<< orphan*/  _remote_ssh_passphrase ; 
 int /*<<< orphan*/  _remote_ssh_pubkey ; 
 int /*<<< orphan*/  _remote_url ; 
 int /*<<< orphan*/  _remote_user ; 
 int /*<<< orphan*/ * _repo ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(void)
{
	if (_remote)
		FUNC3(_remote);
	_remote = NULL;

	FUNC2(_remote_url);
	FUNC2(_remote_user);
	FUNC2(_remote_pass);
	FUNC2(_remote_ssh_key);
	FUNC2(_remote_ssh_pubkey);
	FUNC2(_remote_ssh_passphrase);
	FUNC2(_remote_default);

	/* Freed by cl_git_sandbox_cleanup */
	_repo = NULL;

	FUNC4(&_record_cbs_data);

	FUNC0("testrepo.git");
	FUNC1();
}