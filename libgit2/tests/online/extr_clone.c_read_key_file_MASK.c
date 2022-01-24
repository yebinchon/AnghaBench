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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  SEEK_END ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char const*,char*) ; 
 int FUNC3 (char*,long,int,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 long FUNC5 (int /*<<< orphan*/ *) ; 
 char* FUNC6 (long) ; 

__attribute__((used)) static char *FUNC7(const char *path)
{
	FILE *f;
	char *buf;
	long key_length;

	if (!path || !*path)
		return NULL;

	FUNC0((f = FUNC2(path, "r")) != NULL);
	FUNC0(FUNC4(f, 0, SEEK_END) != -1);
	FUNC0((key_length = FUNC5(f)) != -1);
	FUNC0(FUNC4(f, 0, SEEK_SET) != -1);
	FUNC0((buf = FUNC6(key_length)) != NULL);
	FUNC0(FUNC3(buf, key_length, 1, f) == 1);
	FUNC1(f);

	return buf;
}