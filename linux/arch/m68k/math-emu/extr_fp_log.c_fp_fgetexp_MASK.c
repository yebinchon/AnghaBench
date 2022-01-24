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
struct fp_ext {scalar_t__ exp; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct fp_ext*) ; 
 scalar_t__ FUNC1 (struct fp_ext*) ; 
 int /*<<< orphan*/  PINSTR ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct fp_ext*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct fp_ext*,struct fp_ext*) ; 
 int /*<<< orphan*/  FUNC5 (struct fp_ext*) ; 
 int /*<<< orphan*/  FUNC6 (struct fp_ext*) ; 

struct fp_ext *
FUNC7(struct fp_ext *dest, struct fp_ext *src)
{
	FUNC2(PINSTR, "fgetexp\n");

	FUNC4(dest, src);

	if (FUNC0(dest)) {
		FUNC6(dest);
		return dest;
	}
	if (FUNC1(dest))
		return dest;

	FUNC3(dest, (int)dest->exp - 0x3FFF);

	FUNC5(dest);

	return dest;
}