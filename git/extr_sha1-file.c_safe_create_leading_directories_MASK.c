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
struct stat {int /*<<< orphan*/  st_mode; } ;
typedef  enum scld_error { ____Placeholder_scld_error } scld_error ;

/* Variables and functions */
 scalar_t__ EEXIST ; 
 scalar_t__ ENOENT ; 
 scalar_t__ ENOTDIR ; 
 int SCLD_EXISTS ; 
 int SCLD_FAILED ; 
 int SCLD_OK ; 
 int SCLD_PERMS ; 
 int SCLD_VANISHED ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (char*) ; 
 scalar_t__ errno ; 
 scalar_t__ FUNC2 (char) ; 
 scalar_t__ FUNC3 (char*,int) ; 
 int FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,struct stat*) ; 

enum scld_error FUNC6(char *path)
{
	char *next_component = path + FUNC4(path);
	enum scld_error ret = SCLD_OK;

	while (ret == SCLD_OK && next_component) {
		struct stat st;
		char *slash = next_component, slash_character;

		while (*slash && !FUNC2(*slash))
			slash++;

		if (!*slash)
			break;

		next_component = slash + 1;
		while (FUNC2(*next_component))
			next_component++;
		if (!*next_component)
			break;

		slash_character = *slash;
		*slash = '\0';
		if (!FUNC5(path, &st)) {
			/* path exists */
			if (!FUNC0(st.st_mode)) {
				errno = ENOTDIR;
				ret = SCLD_EXISTS;
			}
		} else if (FUNC3(path, 0777)) {
			if (errno == EEXIST &&
			    !FUNC5(path, &st) && FUNC0(st.st_mode))
				; /* somebody created it since we checked */
			else if (errno == ENOENT)
				/*
				 * Either mkdir() failed because
				 * somebody just pruned the containing
				 * directory, or stat() failed because
				 * the file that was in our way was
				 * just removed.  Either way, inform
				 * the caller that it might be worth
				 * trying again:
				 */
				ret = SCLD_VANISHED;
			else
				ret = SCLD_FAILED;
		} else if (FUNC1(path)) {
			ret = SCLD_PERMS;
		}
		*slash = slash_character;
	}
	return ret;
}