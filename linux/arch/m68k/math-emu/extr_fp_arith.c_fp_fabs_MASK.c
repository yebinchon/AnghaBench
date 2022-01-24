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
struct fp_ext {scalar_t__ sign; } ;

/* Variables and functions */
 int /*<<< orphan*/  PINSTR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct fp_ext*,struct fp_ext*) ; 

struct fp_ext *
FUNC2(struct fp_ext *dest, struct fp_ext *src)
{
	FUNC0(PINSTR, "fabs\n");

	FUNC1(dest, src);

	dest->sign = 0;

	return dest;
}