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
struct request_queue {int /*<<< orphan*/  queue_lock; } ;
struct blkcg_policy {int dummy; } ;
struct blkcg_gq {int dummy; } ;
struct blkcg {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  EOPNOTSUPP ; 
 struct blkcg_gq* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 struct blkcg_gq* FUNC2 (struct blkcg*,struct request_queue*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct request_queue*,struct blkcg_policy const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 () ; 

__attribute__((used)) static struct blkcg_gq *FUNC6(struct blkcg *blkcg,
					  const struct blkcg_policy *pol,
					  struct request_queue *q)
{
	FUNC1(!FUNC5());
	FUNC4(&q->queue_lock);

	if (!FUNC3(q, pol))
		return FUNC0(-EOPNOTSUPP);
	return FUNC2(blkcg, q, true /* update_hint */);
}