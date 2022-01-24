#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/ * ids; int /*<<< orphan*/  count; int /*<<< orphan*/  member_1; int /*<<< orphan*/ * member_0; } ;
typedef  TYPE_1__ git_oidarray ;
typedef  int /*<<< orphan*/  git_oid ;

/* Variables and functions */
 int /*<<< orphan*/  _repo ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 

void FUNC8(void)
{
	git_oid expected1, expected2;
	git_oidarray result = {NULL, 0};

	git_oid *input = FUNC4(sizeof(git_oid) * 2);

	FUNC2(FUNC6(&input[0], "a4a7dce85cf63874e984719f4fdd239f5145052f"));
	FUNC2(FUNC6(&input[1], "be3563ae3f795b2b4353bcce3a527ad0a4f7f644"));
	FUNC2(FUNC6(&expected1, "c47800c7266a2be04c571c04d5a6614691ea99bd"));
	FUNC2(FUNC6(&expected2, "9fd738e8f7967c078dceed8190330fc8648ee56a"));

	FUNC2(FUNC5(&result, _repo, 2, input));
	FUNC0(2, result.count);
	FUNC1(&expected1, &result.ids[0]);
	FUNC1(&expected2, &result.ids[1]);

	FUNC7(&result);
	FUNC3(input);
}