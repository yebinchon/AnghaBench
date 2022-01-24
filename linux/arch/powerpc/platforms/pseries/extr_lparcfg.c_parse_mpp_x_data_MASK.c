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
struct seq_file {int dummy; } ;
struct hvcall_mpp_x_data {scalar_t__ pool_spurr_cycles; scalar_t__ pool_purr_cycles; scalar_t__ pool_coalesced_bytes; scalar_t__ coalesced_bytes; } ;

/* Variables and functions */
 int /*<<< orphan*/  FW_FEATURE_XCMO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct hvcall_mpp_x_data*) ; 
 int /*<<< orphan*/  FUNC2 (struct seq_file*,char*,scalar_t__) ; 

__attribute__((used)) static void FUNC3(struct seq_file *m)
{
	struct hvcall_mpp_x_data mpp_x_data;

	if (!FUNC0(FW_FEATURE_XCMO))
		return;
	if (FUNC1(&mpp_x_data))
		return;

	FUNC2(m, "coalesced_bytes=%ld\n", mpp_x_data.coalesced_bytes);

	if (mpp_x_data.pool_coalesced_bytes)
		FUNC2(m, "pool_coalesced_bytes=%ld\n",
			   mpp_x_data.pool_coalesced_bytes);
	if (mpp_x_data.pool_purr_cycles)
		FUNC2(m, "coalesce_pool_purr=%ld\n", mpp_x_data.pool_purr_cycles);
	if (mpp_x_data.pool_spurr_cycles)
		FUNC2(m, "coalesce_pool_spurr=%ld\n", mpp_x_data.pool_spurr_cycles);
}