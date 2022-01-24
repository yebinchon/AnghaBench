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
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 

void FUNC2(void)
{
	FUNC0("~");
	FUNC1("foo~bar", NULL);

	FUNC0("master~bar");
	FUNC0("master~-1");
	FUNC0("master~0bar");
	FUNC0("this doesn't make sense~2");
	FUNC0("be3563a^{tree}~");
	FUNC0("point_to_blob^{blob}~");

	FUNC1("master~0", "a65fedf39aefe402d3bb6e24df4d4f5fe4547750");
	FUNC1("master~1", "be3563ae3f795b2b4353bcce3a527ad0a4f7f644");
	FUNC1("master~2", "9fd738e8f7967c078dceed8190330fc8648ee56a");
	FUNC1("master~1~1", "9fd738e8f7967c078dceed8190330fc8648ee56a");
	FUNC1("master~~", "9fd738e8f7967c078dceed8190330fc8648ee56a");
}