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
struct diff_filepair {int /*<<< orphan*/  two; int /*<<< orphan*/  one; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct diff_filepair*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

void FUNC2(struct diff_filepair *p)
{
	FUNC1(p->one);
	FUNC1(p->two);
	FUNC0(p);
}