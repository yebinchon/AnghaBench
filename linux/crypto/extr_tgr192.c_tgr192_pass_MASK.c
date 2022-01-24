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
typedef  int /*<<< orphan*/  u64 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC1(u64 * ra, u64 * rb, u64 * rc, u64 * x, int mul)
{
	u64 a = *ra;
	u64 b = *rb;
	u64 c = *rc;

	FUNC0(&a, &b, &c, x[0], mul);
	FUNC0(&b, &c, &a, x[1], mul);
	FUNC0(&c, &a, &b, x[2], mul);
	FUNC0(&a, &b, &c, x[3], mul);
	FUNC0(&b, &c, &a, x[4], mul);
	FUNC0(&c, &a, &b, x[5], mul);
	FUNC0(&a, &b, &c, x[6], mul);
	FUNC0(&b, &c, &a, x[7], mul);

	*ra = a;
	*rb = b;
	*rc = c;
}