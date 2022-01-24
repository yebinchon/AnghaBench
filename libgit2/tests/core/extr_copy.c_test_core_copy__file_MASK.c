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

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,struct stat*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 size_t FUNC7 (char const*) ; 

void FUNC8(void)
{
	struct stat st;
	const char *content = "This is some stuff to copy\n";

	FUNC2("copy_me", content);

	FUNC3(FUNC4("copy_me", "copy_me_two", 0664));

	FUNC3(FUNC5("copy_me_two", &st));
	FUNC1(FUNC0(st.st_mode));
	FUNC1(FUNC7(content) == (size_t)st.st_size);

	FUNC3(FUNC6("copy_me_two"));
	FUNC3(FUNC6("copy_me"));
}