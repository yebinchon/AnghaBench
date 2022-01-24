#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  git_oid ;
typedef  int /*<<< orphan*/  git_odb ;
struct TYPE_3__ {int /*<<< orphan*/  message; } ;
typedef  TYPE_1__ git_error ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_OBJECT_BLOB ; 
 int /*<<< orphan*/  _repo ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 

void FUNC6(void)
{
	git_oid id;
	git_odb *odb;
	const git_error *err;

	FUNC5(&odb, _repo);
	FUNC1(FUNC4(&id, odb, "Hello world!\n", 13, GIT_OBJECT_BLOB));

	err = FUNC2();
	FUNC0(err->message, "cannot write object - unsupported in the loaded odb backends");

	FUNC3(odb);
}