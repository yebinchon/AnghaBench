#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/ * buffer; } ;
typedef  TYPE_1__ git_filebuf ;

/* Variables and functions */
 TYPE_1__ GIT_FILEBUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char*,int /*<<< orphan*/ ,int) ; 

void FUNC4(void)
{
	git_filebuf file = GIT_FILEBUF_INIT;
	char test[] = "test";

	FUNC0(file.buffer == NULL);

	FUNC1(FUNC3(&file, test, 0, 0666));
	FUNC0(file.buffer != NULL);

	FUNC2(&file);
	FUNC0(file.buffer == NULL);
}