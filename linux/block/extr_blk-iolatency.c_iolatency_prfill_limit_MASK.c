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
typedef  int /*<<< orphan*/  u64 ;
struct seq_file {int dummy; } ;
struct iolatency_grp {int /*<<< orphan*/  min_lat_nsec; } ;
struct blkg_policy_data {int /*<<< orphan*/  blkg; } ;

/* Variables and functions */
 int /*<<< orphan*/  NSEC_PER_USEC ; 
 char* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct iolatency_grp* FUNC2 (struct blkg_policy_data*) ; 
 int /*<<< orphan*/  FUNC3 (struct seq_file*,char*,char const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static u64 FUNC4(struct seq_file *sf,
				  struct blkg_policy_data *pd, int off)
{
	struct iolatency_grp *iolat = FUNC2(pd);
	const char *dname = FUNC0(pd->blkg);

	if (!dname || !iolat->min_lat_nsec)
		return 0;
	FUNC3(sf, "%s target=%llu\n",
		   dname, FUNC1(iolat->min_lat_nsec, NSEC_PER_USEC));
	return 0;
}