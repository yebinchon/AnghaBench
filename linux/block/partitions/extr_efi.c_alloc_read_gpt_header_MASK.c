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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u64 ;
struct parsed_partitions {int /*<<< orphan*/  bdev; } ;
typedef  int /*<<< orphan*/  gpt_header ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (unsigned int,int /*<<< orphan*/ ) ; 
 unsigned int FUNC3 (struct parsed_partitions*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,unsigned int) ; 

__attribute__((used)) static gpt_header *FUNC4(struct parsed_partitions *state,
					 u64 lba)
{
	gpt_header *gpt;
	unsigned ssz = FUNC0(state->bdev);

	gpt = FUNC2(ssz, GFP_KERNEL);
	if (!gpt)
		return NULL;

	if (FUNC3(state, lba, (u8 *) gpt, ssz) < ssz) {
		FUNC1(gpt);
                gpt=NULL;
		return NULL;
	}

	return gpt;
}