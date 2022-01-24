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
struct region {int dummy; } ;
struct histindex {scalar_t__ cnt; scalar_t__ max_chain_length; scalar_t__ has_common; } ;

/* Variables and functions */
 unsigned int FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct histindex*,unsigned int,unsigned int) ; 
 unsigned int FUNC2 (struct histindex*,struct region*,unsigned int,unsigned int,unsigned int,unsigned int,unsigned int) ; 

__attribute__((used)) static int FUNC3(
	struct histindex *index, struct region *lcs,
	unsigned int line1, unsigned int count1,
	unsigned int line2, unsigned int count2)
{
	unsigned int b_ptr;

	if (FUNC1(index, line1, count1))
		return -1;

	index->cnt = index->max_chain_length + 1;

	for (b_ptr = line2; b_ptr <= FUNC0(2); )
		b_ptr = FUNC2(index, lcs, b_ptr, line1, count1, line2, count2);

	return index->has_common && index->max_chain_length < index->cnt;
}