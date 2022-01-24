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
typedef  int /*<<< orphan*/  xdfile_t ;
typedef  int /*<<< orphan*/  xdemitcb_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (char const*) ; 
 scalar_t__ FUNC1 (char const*,long,char const*,long,int /*<<< orphan*/ *) ; 
 long FUNC2 (int /*<<< orphan*/ *,long,char const**) ; 

__attribute__((used)) static int FUNC3(xdfile_t *xdf, long ri, char const *pre, xdemitcb_t *ecb) {
	long size, psize = (long)FUNC0(pre);
	char const *rec;

	size = FUNC2(xdf, ri, &rec);
	if (FUNC1(rec, size, pre, psize, ecb) < 0) {

		return -1;
	}

	return 0;
}