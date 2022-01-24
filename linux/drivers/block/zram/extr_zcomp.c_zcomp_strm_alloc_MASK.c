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
struct zcomp_strm {void* buffer; int /*<<< orphan*/  tfm; } ;
struct zcomp {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int __GFP_ZERO ; 
 scalar_t__ FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct zcomp_strm* FUNC3 (int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct zcomp_strm*) ; 

__attribute__((used)) static struct zcomp_strm *FUNC5(struct zcomp *comp)
{
	struct zcomp_strm *zstrm = FUNC3(sizeof(*zstrm), GFP_KERNEL);
	if (!zstrm)
		return NULL;

	zstrm->tfm = FUNC2(comp->name, 0, 0);
	/*
	 * allocate 2 pages. 1 for compressed data, plus 1 extra for the
	 * case when compressed size is larger than the original one
	 */
	zstrm->buffer = (void *)FUNC1(GFP_KERNEL | __GFP_ZERO, 1);
	if (FUNC0(zstrm->tfm) || !zstrm->buffer) {
		FUNC4(zstrm);
		zstrm = NULL;
	}
	return zstrm;
}