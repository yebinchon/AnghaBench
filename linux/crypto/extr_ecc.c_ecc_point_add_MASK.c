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
typedef  int /*<<< orphan*/  u64 ;
struct ecc_point {int /*<<< orphan*/ * y; int /*<<< orphan*/ * x; } ;
struct TYPE_2__ {unsigned int ndigits; } ;
struct ecc_curve {int /*<<< orphan*/  p; TYPE_1__ g; } ;

/* Variables and functions */
 int ECC_MAX_DIGITS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static void FUNC5(const struct ecc_point *result,
		   const struct ecc_point *p, const struct ecc_point *q,
		   const struct ecc_curve *curve)
{
	u64 z[ECC_MAX_DIGITS];
	u64 px[ECC_MAX_DIGITS];
	u64 py[ECC_MAX_DIGITS];
	unsigned int ndigits = curve->g.ndigits;

	FUNC3(result->x, q->x, ndigits);
	FUNC3(result->y, q->y, ndigits);
	FUNC2(z, result->x, p->x, curve->p, ndigits);
	FUNC3(px, p->x, ndigits);
	FUNC3(py, p->y, ndigits);
	FUNC4(px, py, result->x, result->y, curve->p, ndigits);
	FUNC1(z, z, curve->p, ndigits);
	FUNC0(result->x, result->y, z, curve->p, ndigits);
}