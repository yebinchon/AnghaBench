#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct parsed_partitions {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  partition_entry_lba; int /*<<< orphan*/  sizeof_partition_entry; int /*<<< orphan*/  num_partition_entries; } ;
typedef  TYPE_1__ gpt_header ;
typedef  int /*<<< orphan*/  gpt_entry ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (size_t,int /*<<< orphan*/ ) ; 
 size_t FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 size_t FUNC4 (struct parsed_partitions*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,size_t) ; 

__attribute__((used)) static gpt_entry *FUNC5(struct parsed_partitions *state,
					 gpt_header *gpt)
{
	size_t count;
	gpt_entry *pte;

	if (!gpt)
		return NULL;

	count = (size_t)FUNC2(gpt->num_partition_entries) *
                FUNC2(gpt->sizeof_partition_entry);
	if (!count)
		return NULL;
	pte = FUNC1(count, GFP_KERNEL);
	if (!pte)
		return NULL;

	if (FUNC4(state, FUNC3(gpt->partition_entry_lba),
			(u8 *) pte, count) < count) {
		FUNC0(pte);
                pte=NULL;
		return NULL;
	}
	return pte;
}