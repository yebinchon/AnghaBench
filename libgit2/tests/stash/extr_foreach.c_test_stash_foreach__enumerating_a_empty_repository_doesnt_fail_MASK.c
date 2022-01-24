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
struct TYPE_3__ {char** oids; int /*<<< orphan*/  invokes; } ;

/* Variables and functions */
 int /*<<< orphan*/  REPO_NAME ; 
 int /*<<< orphan*/  callback_cb ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_1__ data ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  repo ; 

void FUNC4(void)
{
	char *oids[] = { NULL };

	data.oids = oids;

	FUNC1(FUNC2(&repo, REPO_NAME, 0));

	FUNC1(FUNC3(repo, callback_cb, &data));

	FUNC0(0, data.invokes);
}