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
 scalar_t__ MQ_RQ_IDLE ; 
 scalar_t__ FUNC0 (struct request*) ; 

int FUNC1(struct request *rq)
{
	return FUNC0(rq) != MQ_RQ_IDLE;
}