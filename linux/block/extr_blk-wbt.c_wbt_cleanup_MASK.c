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
struct rq_wb {int dummy; } ;
struct rq_qos {int dummy; } ;
struct bio {int dummy; } ;
typedef  enum wbt_flags { ____Placeholder_wbt_flags } wbt_flags ;

/* Variables and functions */
 struct rq_wb* FUNC0 (struct rq_qos*) ; 
 int /*<<< orphan*/  FUNC1 (struct rq_qos*,int) ; 
 int FUNC2 (struct rq_wb*,struct bio*) ; 

__attribute__((used)) static void FUNC3(struct rq_qos *rqos, struct bio *bio)
{
	struct rq_wb *rwb = FUNC0(rqos);
	enum wbt_flags flags = FUNC2(rwb, bio);
	FUNC1(rqos, flags);
}