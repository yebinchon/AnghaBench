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
 unsigned int GIT_CREDTYPE_USERPASS_PLAINTEXT ; 
 int /*<<< orphan*/  FUNC0 (void*) ; 
 int FUNC1 (char**,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int FUNC3 (int /*<<< orphan*/ **,char*,char*,char*,char*) ; 
 int FUNC4 (int /*<<< orphan*/ **,char*) ; 
 int FUNC5 (int /*<<< orphan*/ **,char*,char*) ; 
 char* FUNC6 (int) ; 
 int FUNC7 (char*,int,char*,char*) ; 
 char* FUNC8 (char const*) ; 

int FUNC9(git_cred **out,
		const char *url,
		const char *username_from_url,
		unsigned int allowed_types,
		void *payload)
{
	char *username = NULL, *password = NULL, *privkey = NULL, *pubkey = NULL;
	int error = 1;

	FUNC0(url);
	FUNC0(payload);

	if (username_from_url) {
		if ((username = FUNC8(username_from_url)) == NULL)
			goto out;
	} else if ((error = FUNC1(&username, "Username:", 0)) < 0) {
		goto out;
	}

	if (allowed_types & GIT_CREDTYPE_SSH_KEY) {
		int n;

		if ((error = FUNC1(&privkey, "SSH Key:", 0)) < 0 ||
		    (error = FUNC1(&password, "Password:", 1)) < 0)
			goto out;

		if ((n = FUNC7(NULL, 0, "%s.pub", privkey)) < 0 ||
		    (pubkey = FUNC6(n + 1)) == NULL ||
		    (n = FUNC7(pubkey, n + 1, "%s.pub", privkey)) < 0)
			goto out;

		error = FUNC3(out, username, pubkey, privkey, password);
	} else if (allowed_types & GIT_CREDTYPE_USERPASS_PLAINTEXT) {
		if ((error = FUNC1(&password, "Password:", 1)) < 0)
			goto out;

		error = FUNC5(out, username, password);
	} else if (allowed_types & GIT_CREDTYPE_USERNAME) {
		error = FUNC4(out, username);
	}

out:
	FUNC2(username);
	FUNC2(password);
	FUNC2(privkey);
	FUNC2(pubkey);
	return error;
}