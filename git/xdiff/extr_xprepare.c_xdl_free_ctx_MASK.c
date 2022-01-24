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
struct TYPE_3__ {int /*<<< orphan*/  rcha; scalar_t__ recs; scalar_t__ ha; scalar_t__ rchg; scalar_t__ rindex; scalar_t__ rhash; } ;
typedef  TYPE_1__ xdfile_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 

__attribute__((used)) static void FUNC2(xdfile_t *xdf) {

	FUNC1(xdf->rhash);
	FUNC1(xdf->rindex);
	FUNC1(xdf->rchg - 1);
	FUNC1(xdf->ha);
	FUNC1(xdf->recs);
	FUNC0(&xdf->rcha);
}