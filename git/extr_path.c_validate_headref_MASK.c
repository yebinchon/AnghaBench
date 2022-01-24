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
struct object_id {int dummy; } ;
typedef  int ssize_t ;
typedef  int /*<<< orphan*/  buffer ;

/* Variables and functions */
 int /*<<< orphan*/  O_RDONLY ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*,struct object_id*) ; 
 scalar_t__ FUNC3 (char const) ; 
 scalar_t__ FUNC4 (char const*,struct stat*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,int) ; 
 int FUNC6 (char const*,int /*<<< orphan*/ ) ; 
 int FUNC7 (int,char*,int) ; 
 int FUNC8 (char const*,char*,int) ; 
 scalar_t__ FUNC9 (char*,char*,char const**) ; 
 scalar_t__ FUNC10 (char const*,char*) ; 

int FUNC11(const char *path)
{
	struct stat st;
	char buffer[256];
	const char *refname;
	struct object_id oid;
	int fd;
	ssize_t len;

	if (FUNC4(path, &st) < 0)
		return -1;

	/* Make sure it is a "refs/.." symlink */
	if (FUNC0(st.st_mode)) {
		len = FUNC8(path, buffer, sizeof(buffer)-1);
		if (len >= 5 && !FUNC5("refs/", buffer, 5))
			return 0;
		return -1;
	}

	/*
	 * Anything else, just open it and try to see if it is a symbolic ref.
	 */
	fd = FUNC6(path, O_RDONLY);
	if (fd < 0)
		return -1;
	len = FUNC7(fd, buffer, sizeof(buffer)-1);
	FUNC1(fd);

	if (len < 0)
		return -1;
	buffer[len] = '\0';

	/*
	 * Is it a symbolic ref?
	 */
	if (FUNC9(buffer, "ref:", &refname)) {
		while (FUNC3(*refname))
			refname++;
		if (FUNC10(refname, "refs/"))
			return 0;
	}

	/*
	 * Is this a detached HEAD?
	 */
	if (!FUNC2(buffer, &oid))
		return 0;

	return -1;
}