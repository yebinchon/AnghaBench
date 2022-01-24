#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct request_queue {int dummy; } ;
struct hd_struct {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;
struct TYPE_2__ {struct request_queue* queue; } ;

/* Variables and functions */
 size_t STAT_DISCARD ; 
 size_t STAT_READ ; 
 size_t STAT_WRITE ; 
 struct hd_struct* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  io_ticks ; 
 int /*<<< orphan*/ * ios ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/ * merges ; 
 unsigned int FUNC2 (struct request_queue*,struct hd_struct*) ; 
 int FUNC3 (struct hd_struct*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct hd_struct*,size_t) ; 
 TYPE_1__* FUNC5 (struct hd_struct*) ; 
 int /*<<< orphan*/ * sectors ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,int,int,unsigned long long,unsigned int,int,int,unsigned long long,unsigned int,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,unsigned long long,unsigned int) ; 
 int /*<<< orphan*/  time_in_queue ; 

ssize_t FUNC7(struct device *dev,
		       struct device_attribute *attr, char *buf)
{
	struct hd_struct *p = FUNC0(dev);
	struct request_queue *q = FUNC5(p)->queue;
	unsigned int inflight;

	inflight = FUNC2(q, p);
	return FUNC6(buf,
		"%8lu %8lu %8llu %8u "
		"%8lu %8lu %8llu %8u "
		"%8u %8u %8u "
		"%8lu %8lu %8llu %8u"
		"\n",
		FUNC3(p, ios[STAT_READ]),
		FUNC3(p, merges[STAT_READ]),
		(unsigned long long)FUNC3(p, sectors[STAT_READ]),
		(unsigned int)FUNC4(p, STAT_READ),
		FUNC3(p, ios[STAT_WRITE]),
		FUNC3(p, merges[STAT_WRITE]),
		(unsigned long long)FUNC3(p, sectors[STAT_WRITE]),
		(unsigned int)FUNC4(p, STAT_WRITE),
		inflight,
		FUNC1(FUNC3(p, io_ticks)),
		FUNC1(FUNC3(p, time_in_queue)),
		FUNC3(p, ios[STAT_DISCARD]),
		FUNC3(p, merges[STAT_DISCARD]),
		(unsigned long long)FUNC3(p, sectors[STAT_DISCARD]),
		(unsigned int)FUNC4(p, STAT_DISCARD));
}