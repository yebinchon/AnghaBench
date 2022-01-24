#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  git_odb_backend ;
typedef  int /*<<< orphan*/  git_odb ;
struct TYPE_2__ {int /*<<< orphan*/  position; } ;
typedef  TYPE_1__ fake_backend ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,size_t) ; 
 size_t FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(git_odb *odb)
{
	size_t i, max_i = FUNC4(odb);
	fake_backend *internal;

	for (i = 0; i < max_i; ++i) {
		FUNC2(FUNC3((git_odb_backend **)&internal, odb, i));
		FUNC0(internal != NULL);
		FUNC1(i, internal->position);
	}
}