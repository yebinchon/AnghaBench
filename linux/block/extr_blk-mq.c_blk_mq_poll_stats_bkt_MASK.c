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
struct request {int dummy; } ;

/* Variables and functions */
 int BLK_MQ_POLL_STATS_BKTS ; 
 int FUNC0 (struct request const*) ; 
 int FUNC1 (int) ; 
 int FUNC2 (struct request const*) ; 

__attribute__((used)) static int FUNC3(const struct request *rq)
{
	int ddir, sectors, bucket;

	ddir = FUNC2(rq);
	sectors = FUNC0(rq);

	bucket = ddir + 2 * FUNC1(sectors);

	if (bucket < 0)
		return -1;
	else if (bucket >= BLK_MQ_POLL_STATS_BKTS)
		return ddir + BLK_MQ_POLL_STATS_BKTS - 2;

	return bucket;
}