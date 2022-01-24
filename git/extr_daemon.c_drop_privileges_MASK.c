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
struct credentials {TYPE_1__* pass; int /*<<< orphan*/  gid; } ;
struct TYPE_2__ {int /*<<< orphan*/  pw_uid; int /*<<< orphan*/  pw_name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct credentials *cred)
{
	if (cred && (FUNC1(cred->pass->pw_name, cred->gid) ||
	    FUNC2 (cred->gid) || FUNC3(cred->pass->pw_uid)))
		FUNC0("cannot drop privileges");
}