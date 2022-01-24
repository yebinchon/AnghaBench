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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char* FUNC3 (size_t) ; 
 int /*<<< orphan*/  FUNC4 (char*,size_t) ; 
 size_t FUNC5 (char const*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char const*,size_t) ; 

__attribute__((used)) static void
FUNC7(
	const char* path,
	size_t      maxlen,
    const char* expected)
{
	size_t len = FUNC5(path);
	char *buf = FUNC3(len + 2);
	FUNC0(buf);

	FUNC6(buf, path, len + 2);

	FUNC4(buf, maxlen);

	FUNC1(expected, buf);

	FUNC2(buf);
}