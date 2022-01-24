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
struct gf128mul_4k {int /*<<< orphan*/ * t; } ;
typedef  int /*<<< orphan*/  be128 ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct gf128mul_4k* FUNC2 (int,int /*<<< orphan*/ ) ; 

struct gf128mul_4k *FUNC3(const be128 *g)
{
	struct gf128mul_4k *t;
	int j, k;

	t = FUNC2(sizeof(*t), GFP_KERNEL);
	if (!t)
		goto out;

	t->t[128] = *g;
	for (j = 64; j > 0; j >>= 1)
		FUNC1(&t->t[j], &t->t[j+j]);

	for (j = 2; j < 256; j += j)
		for (k = 1; k < j; ++k)
			FUNC0(&t->t[j + k], &t->t[j], &t->t[k]);

out:
	return t;
}