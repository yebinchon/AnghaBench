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
 struct hd_struct* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (struct request_queue*,struct hd_struct*,unsigned int*) ; 
 TYPE_1__* FUNC2 (struct hd_struct*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,unsigned int,unsigned int) ; 

ssize_t FUNC4(struct device *dev, struct device_attribute *attr,
			   char *buf)
{
	struct hd_struct *p = FUNC0(dev);
	struct request_queue *q = FUNC2(p)->queue;
	unsigned int inflight[2];

	FUNC1(q, p, inflight);
	return FUNC3(buf, "%8u %8u\n", inflight[0], inflight[1]);
}