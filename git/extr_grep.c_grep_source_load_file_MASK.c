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
struct stat {scalar_t__ st_size; int /*<<< orphan*/  st_mode; } ;
struct grep_source {char* identifier; char* buf; size_t size; } ;

/* Variables and functions */
 scalar_t__ ENOENT ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 scalar_t__ FUNC5 (char const*,struct stat*) ; 
 int FUNC6 (char const*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int,char*,size_t) ; 
 char* FUNC8 (size_t) ; 
 size_t FUNC9 (scalar_t__) ; 

__attribute__((used)) static int FUNC10(struct grep_source *gs)
{
	const char *filename = gs->identifier;
	struct stat st;
	char *data;
	size_t size;
	int i;

	if (FUNC5(filename, &st) < 0) {
	err_ret:
		if (errno != ENOENT)
			FUNC3(FUNC1("failed to stat '%s'"), filename);
		return -1;
	}
	if (!FUNC0(st.st_mode))
		return -1;
	size = FUNC9(st.st_size);
	i = FUNC6(filename, O_RDONLY);
	if (i < 0)
		goto err_ret;
	data = FUNC8(size);
	if (st.st_size != FUNC7(i, data, size)) {
		FUNC3(FUNC1("'%s': short read"), filename);
		FUNC2(i);
		FUNC4(data);
		return -1;
	}
	FUNC2(i);

	gs->buf = data;
	gs->size = size;
	return 0;
}