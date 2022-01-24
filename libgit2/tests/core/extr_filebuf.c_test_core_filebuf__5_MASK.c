#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/ * buffer; } ;
typedef  TYPE_1__ git_filebuf ;

/* Variables and functions */
 TYPE_1__ GIT_FILEBUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 

void FUNC7(void)
{
	git_filebuf file = GIT_FILEBUF_INIT;
	char test[] = "test";

	FUNC0(file.buffer == NULL);

	FUNC1(FUNC4(&file, test, 0, 0666));
	FUNC0(file.buffer != NULL);
	FUNC1(FUNC5(&file, "%s\n", "libgit2 rocks"));
	FUNC0(file.buffer != NULL);

	FUNC1(FUNC3(&file));
	FUNC0(file.buffer == NULL);

	FUNC2(FUNC6(test));
}