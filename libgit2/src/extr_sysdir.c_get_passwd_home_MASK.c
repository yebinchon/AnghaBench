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
typedef  int /*<<< orphan*/  uid_t ;
struct passwd {int /*<<< orphan*/  pw_dir; } ;
typedef  int /*<<< orphan*/  git_buf ;

/* Variables and functions */
 int ERANGE ; 
 int /*<<< orphan*/  GIT_ERROR_OS ; 
 int /*<<< orphan*/  _SC_GETPW_R_SIZE_MAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ ,struct passwd*,char*,long,struct passwd**) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char* FUNC3 (char*,long) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 long FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(git_buf *out, uid_t uid)
{
	struct passwd pwd, *pwdptr;
	char *buf = NULL;
	long buflen;
	int error;

	FUNC0(out);

	if ((buflen = FUNC6(_SC_GETPW_R_SIZE_MAX)) == -1)
		buflen = 1024;

	do {
		buf = FUNC3(buf, buflen);
		error = FUNC1(uid, &pwd, buf, buflen, &pwdptr);
		buflen *= 2;
	} while (error == ERANGE && buflen <= 8192);

	if (error) {
		FUNC5(GIT_ERROR_OS, "failed to get passwd entry");
		goto out;
	}

	if (!pwdptr) {
		FUNC5(GIT_ERROR_OS, "no passwd entry found for user");
		goto out;
	}

	if ((error = FUNC4(out, pwdptr->pw_dir)) < 0)
		goto out;

out:
	FUNC2(buf);
	return error;
}