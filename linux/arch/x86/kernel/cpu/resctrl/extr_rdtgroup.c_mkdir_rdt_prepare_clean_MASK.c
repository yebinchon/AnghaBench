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
struct TYPE_2__ {int /*<<< orphan*/  rmid; } ;
struct rdtgroup {TYPE_1__ mon; int /*<<< orphan*/  kn; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct rdtgroup*) ; 

__attribute__((used)) static void FUNC3(struct rdtgroup *rgrp)
{
	FUNC1(rgrp->kn);
	FUNC0(rgrp->mon.rmid);
	FUNC2(rgrp);
}