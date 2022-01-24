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
struct request_queue {int dummy; } ;
struct ioc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  RQ_QOS_COST ; 
 int /*<<< orphan*/  FUNC0 (struct request_queue*,int /*<<< orphan*/ ) ; 
 struct ioc* FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct ioc *FUNC2(struct request_queue *q)
{
	return FUNC1(FUNC0(q, RQ_QOS_COST));
}