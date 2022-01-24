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
struct ecc_point {unsigned int ndigits; void* x; void* y; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 void* FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (struct ecc_point*) ; 
 struct ecc_point* FUNC3 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct ecc_point *FUNC4(unsigned int ndigits)
{
	struct ecc_point *p = FUNC3(sizeof(*p), GFP_KERNEL);

	if (!p)
		return NULL;

	p->x = FUNC0(ndigits);
	if (!p->x)
		goto err_alloc_x;

	p->y = FUNC0(ndigits);
	if (!p->y)
		goto err_alloc_y;

	p->ndigits = ndigits;

	return p;

err_alloc_y:
	FUNC1(p->x);
err_alloc_x:
	FUNC2(p);
	return NULL;
}