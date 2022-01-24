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
struct scatterlist {int dummy; } ;

/* Variables and functions */
 struct scatterlist* FUNC0 (struct scatterlist*) ; 
 int /*<<< orphan*/  FUNC1 (struct scatterlist*) ; 

__attribute__((used)) static inline struct scatterlist *FUNC2(struct scatterlist **sg,
		struct scatterlist *sglist)
{
	if (!*sg)
		return sglist;

	/*
	 * If the driver previously mapped a shorter list, we could see a
	 * termination bit prematurely unless it fully inits the sg table
	 * on each mapping. We KNOW that there must be more entries here
	 * or the driver would be buggy, so force clear the termination bit
	 * to avoid doing a full sg_init_table() in drivers for each command.
	 */
	FUNC1(*sg);
	return FUNC0(*sg);
}