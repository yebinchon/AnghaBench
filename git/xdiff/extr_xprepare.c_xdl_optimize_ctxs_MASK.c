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
typedef  int /*<<< orphan*/  xdlclassifier_t ;
typedef  int /*<<< orphan*/  xdfile_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(xdlclassifier_t *cf, xdfile_t *xdf1, xdfile_t *xdf2) {

	if (FUNC1(xdf1, xdf2) < 0 ||
	    FUNC0(cf, xdf1, xdf2) < 0) {

		return -1;
	}

	return 0;
}