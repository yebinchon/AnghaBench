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
typedef  int uint32_t ;
struct pack_idx_option {int off32_limit; int /*<<< orphan*/  anomaly_nr; int /*<<< orphan*/  anomaly; } ;
typedef  int /*<<< orphan*/  ofsval ;
typedef  int off_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cmp_uint32 ; 

__attribute__((used)) static int FUNC1(off_t offset, const struct pack_idx_option *opts)
{
	uint32_t ofsval;

	if ((offset >> 31) || (opts->off32_limit < offset))
		return 1;
	if (!opts->anomaly_nr)
		return 0;
	ofsval = offset;
	return !!FUNC0(&ofsval, opts->anomaly, opts->anomaly_nr,
			 sizeof(ofsval), cmp_uint32);
}