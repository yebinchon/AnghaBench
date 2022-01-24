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
struct TYPE_6__ {int /*<<< orphan*/  push; } ;

/* Variables and functions */
 TYPE_1__* _refspec ; 
 int /*<<< orphan*/  _remote ; 
 int /*<<< orphan*/  _repo ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC9 (int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 size_t FUNC11 (int /*<<< orphan*/ ) ; 

void FUNC12(void)
{
	size_t size;

	size = FUNC11(_remote);

	FUNC3(FUNC7(_repo, "test", "refs/*:refs/*"));
	size++;

	FUNC8(_remote);
	FUNC3(FUNC10(&_remote, _repo, "test"));

	FUNC1((int)size, (int)FUNC11(_remote));

	_refspec = FUNC9(_remote, size - 1);
	FUNC2(FUNC5(_refspec), "refs/*");
	FUNC2(FUNC4(_refspec), "refs/*");
	FUNC2(FUNC6(_refspec), "refs/*:refs/*");

	FUNC0(_refspec->push, true);
}