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
typedef  scalar_t__ git_file ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (char const*,int,int) ; 
 scalar_t__ FUNC3 (char const*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int FUNC5 (char const*) ; 
 int FUNC6 (scalar_t__,char const*,int) ; 
 int FUNC7 (char const*) ; 

__attribute__((used)) static void FUNC8(const char *path, const char *content)
{
	git_file file;
	int error;

	if (FUNC3(path)) {
		FUNC1(FUNC5(path));
	}

	file = FUNC2(path, 0777, 0666);
	FUNC0(file >= 0);

	error = FUNC6(file, content, FUNC7(content) * sizeof(char));
	FUNC4(file);
	FUNC1(error);
}