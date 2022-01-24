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
 unsigned int GIT_CREDTYPE_DEFAULT ; 
 unsigned int GIT_CREDTYPE_SSH_KEY ; 
 unsigned int GIT_CREDTYPE_USERNAME ; 
 unsigned int GIT_CREDTYPE_USERPASS_PLAINTEXT ; 
 int /*<<< orphan*/  FUNC0 (void*) ; 
 int /*<<< orphan*/  _remote_default ; 
 int /*<<< orphan*/  _remote_pass ; 
 int /*<<< orphan*/  _remote_ssh_key ; 
 int /*<<< orphan*/  _remote_ssh_passphrase ; 
 int /*<<< orphan*/  _remote_ssh_pubkey ; 
 int /*<<< orphan*/  _remote_user ; 
 int FUNC1 (int /*<<< orphan*/ **) ; 
 int FUNC2 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

__attribute__((used)) static int FUNC6(
	git_cred **cred,
	const char *url,
	const char *user_from_url,
	unsigned int allowed_types,
	void *payload)
{
	FUNC0(url);
	FUNC0(user_from_url);
	FUNC0(payload);

	if (GIT_CREDTYPE_USERNAME & allowed_types) {
		if (!_remote_user) {
			FUNC5("GITTEST_REMOTE_USER must be set\n");
			return -1;
		}

		return FUNC3(cred, _remote_user);
	}

	if (GIT_CREDTYPE_DEFAULT & allowed_types) {
		if (!_remote_default) {
			FUNC5("GITTEST_REMOTE_DEFAULT must be set to use NTLM/Negotiate credentials\n");
			return -1;
		}

		return FUNC1(cred);
	}

	if (GIT_CREDTYPE_SSH_KEY & allowed_types) {
		if (!_remote_user || !_remote_ssh_pubkey || !_remote_ssh_key || !_remote_ssh_passphrase) {
			FUNC5("GITTEST_REMOTE_USER, GITTEST_REMOTE_SSH_PUBKEY, GITTEST_REMOTE_SSH_KEY and GITTEST_REMOTE_SSH_PASSPHRASE must be set\n");
			return -1;
		}

		return FUNC2(cred, _remote_user, _remote_ssh_pubkey, _remote_ssh_key, _remote_ssh_passphrase);
	}

	if (GIT_CREDTYPE_USERPASS_PLAINTEXT & allowed_types) {
		if (!_remote_user || !_remote_pass) {
			FUNC5("GITTEST_REMOTE_USER and GITTEST_REMOTE_PASS must be set\n");
			return -1;
		}

		return FUNC4(cred, _remote_user, _remote_pass);
	}

	return -1;
}