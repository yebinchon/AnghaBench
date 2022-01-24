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
typedef  scalar_t__ ssize_t ;
typedef  int /*<<< orphan*/  git_oid ;
typedef  int /*<<< orphan*/  git_hash_ctx ;

/* Variables and functions */
 int /*<<< orphan*/  O_RDONLY ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,size_t) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int FUNC8 (char const*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int,char*,int) ; 

__attribute__((used)) static int FUNC10(git_oid *oid, const char *filename)
{
	git_hash_ctx ctx;
	char buf[2048];
	int fd, ret;
	ssize_t read_len;

	fd = FUNC8(filename, O_RDONLY);
	FUNC0(fd >= 0);

	FUNC2(FUNC4(&ctx));

	while ((read_len = FUNC9(fd, buf, 2048)) > 0)
		FUNC2(FUNC6(&ctx, buf, (size_t)read_len));

	FUNC1(0, read_len);
	FUNC7(fd);

	ret = FUNC5(oid, &ctx);
	FUNC3(&ctx);

	return ret;
}