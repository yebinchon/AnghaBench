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
typedef  int /*<<< orphan*/ * List ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ *) ; 
 char* FUNC3 (char const*,char) ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*) ; 
 int FUNC5 (char const*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char const*,int) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 

__attribute__((used)) static List FUNC8(const char *path) {
	List list = NULL;
	char sep = ':';

	if (path == NULL)
		return NULL;
	if (FUNC3(path, ';'))
		sep = ';';
	while (*path) {
		char *p, buf[512];
		if ((p = FUNC3(path, sep))) {
			FUNC1(p - path < sizeof buf);
			FUNC6(buf, path, p - path);
			buf[p-path] = '\0';
		} else {
			FUNC1(FUNC5(path) < sizeof buf);
			FUNC4(buf, path);
		}
		if (!FUNC2(buf, list))
			list = FUNC0(FUNC7(buf), list);
		if (p == 0)
			break;
		path = p + 1;
	}
	return list;
}