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
struct rq_wb {int /*<<< orphan*/  cb; int /*<<< orphan*/  last_issue; } ;
struct rq_qos {int dummy; } ;
struct bio {int /*<<< orphan*/  bi_opf; } ;
typedef  enum wbt_flags { ____Placeholder_wbt_flags } wbt_flags ;

/* Variables and functions */
 struct rq_wb* FUNC0 (struct rq_qos*) ; 
 int WBT_READ ; 
 int WBT_TRACKED ; 
 int /*<<< orphan*/  FUNC1 (struct rq_wb*,int,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct rq_wb*,struct bio*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct rq_wb*) ; 
 int /*<<< orphan*/  FUNC5 (struct rq_wb*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct rq_qos *rqos, struct bio *bio)
{
	struct rq_wb *rwb = FUNC0(rqos);
	enum wbt_flags flags;

	flags = FUNC2(rwb, bio);
	if (!(flags & WBT_TRACKED)) {
		if (flags & WBT_READ)
			FUNC5(rwb, &rwb->last_issue);
		return;
	}

	FUNC1(rwb, flags, bio->bi_opf);

	if (!FUNC3(rwb->cb))
		FUNC4(rwb);
}