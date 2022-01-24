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
struct strbuf {int /*<<< orphan*/  buf; } ;
struct passwd {char const* pw_dir; } ;

/* Variables and functions */
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 char* FUNC1 (char*) ; 
 struct passwd* FUNC2 (char const*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (struct strbuf*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (struct strbuf*,char const*) ; 
 char* FUNC5 (struct strbuf*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct strbuf*) ; 
 char* FUNC7 (char const*,char) ; 

char *FUNC8(const char *path, int real_home)
{
	struct strbuf user_path = STRBUF_INIT;
	const char *to_copy = path;

	if (path == NULL)
		goto return_null;
	if (path[0] == '~') {
		const char *first_slash = FUNC7(path, '/');
		const char *username = path + 1;
		size_t username_len = first_slash - username;
		if (username_len == 0) {
			const char *home = FUNC1("HOME");
			if (!home)
				goto return_null;
			if (real_home)
				FUNC3(&user_path, home);
			else
				FUNC4(&user_path, home);
#ifdef GIT_WINDOWS_NATIVE
			convert_slashes(user_path.buf);
#endif
		} else {
			struct passwd *pw = FUNC2(username, username_len);
			if (!pw)
				goto return_null;
			FUNC4(&user_path, pw->pw_dir);
		}
		to_copy = first_slash;
	}
	FUNC4(&user_path, to_copy);
	return FUNC5(&user_path, NULL);
return_null:
	FUNC6(&user_path);
	return NULL;
}