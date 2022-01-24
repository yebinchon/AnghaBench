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
	FUNC0("master@{0}@{0}");
	FUNC0("@{u}@{-1}");
	FUNC0("@{-1}@{-1}");
	FUNC0("@{-3}@{0}");

	FUNC1("master@{0}~1^1", "9fd738e8f7967c078dceed8190330fc8648ee56a");
	FUNC1("@{u}@{0}", "be3563ae3f795b2b4353bcce3a527ad0a4f7f644");
	FUNC1("@{-1}@{0}", "a4a7dce85cf63874e984719f4fdd239f5145052f");
	FUNC1("@{-4}@{1}", "be3563ae3f795b2b4353bcce3a527ad0a4f7f644");
	FUNC1("master~1^1", "9fd738e8f7967c078dceed8190330fc8648ee56a");
	FUNC1("master~1^2", "c47800c7266a2be04c571c04d5a6614691ea99bd");
	FUNC1("master^1^2~1", "5b5b025afb0b4c913b4c338a42934a3863bf3644");
	FUNC1("master^^2^", "5b5b025afb0b4c913b4c338a42934a3863bf3644");
	FUNC1("master^1^1^1^1^1", "8496071c1b46c854b31185ea97743be6a8774479");
	FUNC1("master^^1^2^1", NULL);
}