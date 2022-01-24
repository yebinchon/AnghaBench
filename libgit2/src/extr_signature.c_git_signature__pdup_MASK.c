#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  sign; int /*<<< orphan*/  offset; int /*<<< orphan*/  time; } ;
struct TYPE_9__ {TYPE_1__ when; struct TYPE_9__* email; struct TYPE_9__* name; } ;
typedef  TYPE_2__ git_signature ;
typedef  int /*<<< orphan*/  git_pool ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 TYPE_2__* FUNC1 (int /*<<< orphan*/ *,int) ; 
 void* FUNC2 (int /*<<< orphan*/ *,TYPE_2__*) ; 

int FUNC3(git_signature **dest, const git_signature *source, git_pool *pool)
{
	git_signature *signature;

	if (source == NULL)
		return 0;

	signature = FUNC1(pool, sizeof(git_signature));
	FUNC0(signature);

	signature->name = FUNC2(pool, source->name);
	FUNC0(signature->name);

	signature->email = FUNC2(pool, source->email);
	FUNC0(signature->email);

	signature->when.time = source->when.time;
	signature->when.offset = source->when.offset;
	signature->when.sign = source->when.sign;

	*dest = signature;

	return 0;
}