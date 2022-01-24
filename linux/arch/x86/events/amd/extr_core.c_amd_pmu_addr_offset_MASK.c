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

/* Variables and functions */
 int /*<<< orphan*/  X86_FEATURE_PERFCTR_CORE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int* count_offsets ; 
 int* event_offsets ; 

__attribute__((used)) static inline int FUNC1(int index, bool eventsel)
{
	int offset;

	if (!index)
		return index;

	if (eventsel)
		offset = event_offsets[index];
	else
		offset = count_offsets[index];

	if (offset)
		return offset;

	if (!FUNC0(X86_FEATURE_PERFCTR_CORE))
		offset = index;
	else
		offset = index << 1;

	if (eventsel)
		event_offsets[index] = offset;
	else
		count_offsets[index] = offset;

	return offset;
}