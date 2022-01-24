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
struct scatterlist {unsigned int length; } ;
struct scatter_walk {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 unsigned int SEMIBSIZE ; 
 int /*<<< orphan*/  FUNC1 (struct scatter_walk*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct scatter_walk*,struct scatterlist*) ; 
 struct scatterlist* FUNC3 (struct scatterlist*) ; 

__attribute__((used)) static void FUNC4(struct scatter_walk *walk,
				     struct scatterlist *sg,
				     unsigned int end)
{
	unsigned int skip = 0;

	/* The caller should only operate on full SEMIBLOCKs. */
	FUNC0(end < SEMIBSIZE);

	skip = end - SEMIBSIZE;
	while (sg) {
		if (sg->length > skip) {
			FUNC2(walk, sg);
			FUNC1(walk, skip);
			break;
		} else
			skip -= sg->length;

		sg = FUNC3(sg);
	}
}