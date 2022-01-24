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
struct unix_sockaddr_context {int /*<<< orphan*/ * orig_dir; } ;
struct strbuf {int dummy; } ;
struct sockaddr_un {int /*<<< orphan*/  sun_path; int /*<<< orphan*/  sun_family; } ;

/* Variables and functions */
 int /*<<< orphan*/  AF_UNIX ; 
 int /*<<< orphan*/  ENAMETOOLONG ; 
 struct strbuf STRBUF_INIT ; 
 scalar_t__ FUNC0 (char const*,int) ; 
 int /*<<< orphan*/  errno ; 
 char* FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char const*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct sockaddr_un*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC4 (struct strbuf*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (struct strbuf*) ; 
 int FUNC6 (char const*) ; 

__attribute__((used)) static int FUNC7(struct sockaddr_un *sa, const char *path,
			      struct unix_sockaddr_context *ctx)
{
	int size = FUNC6(path) + 1;

	ctx->orig_dir = NULL;
	if (size > sizeof(sa->sun_path)) {
		const char *slash = FUNC1(path);
		const char *dir;
		struct strbuf cwd = STRBUF_INIT;

		if (!slash) {
			errno = ENAMETOOLONG;
			return -1;
		}

		dir = path;
		path = slash + 1;
		size = FUNC6(path) + 1;
		if (size > sizeof(sa->sun_path)) {
			errno = ENAMETOOLONG;
			return -1;
		}
		if (FUNC5(&cwd))
			return -1;
		ctx->orig_dir = FUNC4(&cwd, NULL);
		if (FUNC0(dir, slash - dir) < 0)
			return -1;
	}

	FUNC3(sa, 0, sizeof(*sa));
	sa->sun_family = AF_UNIX;
	FUNC2(sa->sun_path, path, size);
	return 0;
}