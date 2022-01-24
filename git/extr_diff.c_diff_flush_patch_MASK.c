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
struct diff_options {int dummy; } ;
struct diff_filepair {TYPE_1__* two; TYPE_1__* one; } ;
struct TYPE_2__ {int /*<<< orphan*/  mode; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct diff_filepair*) ; 
 int /*<<< orphan*/  FUNC3 (struct diff_filepair*,struct diff_options*) ; 

__attribute__((used)) static void FUNC4(struct diff_filepair *p, struct diff_options *o)
{
	if (FUNC2(p))
		return;

	if ((FUNC0(p->one) && FUNC1(p->one->mode)) ||
	    (FUNC0(p->two) && FUNC1(p->two->mode)))
		return; /* no tree diffs in patch format */

	FUNC3(p, o);
}