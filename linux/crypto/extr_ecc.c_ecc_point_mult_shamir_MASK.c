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
typedef  int u64 ;
struct ecc_point {int* x; int* y; } ;
struct TYPE_2__ {unsigned int ndigits; } ;
struct ecc_curve {int /*<<< orphan*/  p; TYPE_1__ g; } ;

/* Variables and functions */
 int ECC_MAX_DIGITS ; 
 struct ecc_point FUNC0 (int*,int*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int*,int*,int*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct ecc_point*,struct ecc_point const*,struct ecc_point const*,struct ecc_curve const*) ; 
 int /*<<< orphan*/  FUNC3 (int*,int*,int*,int /*<<< orphan*/ ,unsigned int) ; 
 unsigned int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int*,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (int*,int*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (int*,int*,int*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC8 (int*,int*,int*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC9 (int const*,unsigned int) ; 
 int /*<<< orphan*/  FUNC10 (int*,int*,unsigned int) ; 
 int /*<<< orphan*/  FUNC11 (int const*,int) ; 
 int /*<<< orphan*/  FUNC12 (int*,int*,int*,int*,int /*<<< orphan*/ ,unsigned int) ; 

void FUNC13(const struct ecc_point *result,
			   const u64 *u1, const struct ecc_point *p,
			   const u64 *u2, const struct ecc_point *q,
			   const struct ecc_curve *curve)
{
	u64 z[ECC_MAX_DIGITS];
	u64 sump[2][ECC_MAX_DIGITS];
	u64 *rx = result->x;
	u64 *ry = result->y;
	unsigned int ndigits = curve->g.ndigits;
	unsigned int num_bits;
	struct ecc_point sum = FUNC0(sump[0], sump[1], ndigits);
	const struct ecc_point *points[4];
	const struct ecc_point *point;
	unsigned int idx;
	int i;

	FUNC2(&sum, p, q, curve);
	points[0] = NULL;
	points[1] = p;
	points[2] = q;
	points[3] = &sum;

	num_bits = FUNC4(FUNC9(u1, ndigits),
		       FUNC9(u2, ndigits));
	i = num_bits - 1;
	idx = (!!FUNC11(u1, i)) | ((!!FUNC11(u2, i)) << 1);
	point = points[idx];

	FUNC10(rx, point->x, ndigits);
	FUNC10(ry, point->y, ndigits);
	FUNC5(z + 1, ndigits - 1);
	z[0] = 1;

	for (--i; i >= 0; i--) {
		FUNC3(rx, ry, z, curve->p, ndigits);
		idx = (!!FUNC11(u1, i)) | ((!!FUNC11(u2, i)) << 1);
		point = points[idx];
		if (point) {
			u64 tx[ECC_MAX_DIGITS];
			u64 ty[ECC_MAX_DIGITS];
			u64 tz[ECC_MAX_DIGITS];

			FUNC10(tx, point->x, ndigits);
			FUNC10(ty, point->y, ndigits);
			FUNC1(tx, ty, z, curve->p, ndigits);
			FUNC8(tz, rx, tx, curve->p, ndigits);
			FUNC12(tx, ty, rx, ry, curve->p, ndigits);
			FUNC7(z, z, tz, curve->p, ndigits);
		}
	}
	FUNC6(z, z, curve->p, ndigits);
	FUNC1(rx, ry, z, curve->p, ndigits);
}