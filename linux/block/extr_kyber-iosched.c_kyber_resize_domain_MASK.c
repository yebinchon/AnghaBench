#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct kyber_queue_data {int /*<<< orphan*/  q; TYPE_2__* domain_tokens; } ;
struct TYPE_3__ {unsigned int depth; } ;
struct TYPE_4__ {TYPE_1__ sb; } ;

/* Variables and functions */
 unsigned int FUNC0 (unsigned int,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * kyber_depth ; 
 int /*<<< orphan*/ * kyber_domain_names ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static void FUNC3(struct kyber_queue_data *kqd,
				unsigned int sched_domain, unsigned int depth)
{
	depth = FUNC0(depth, 1U, kyber_depth[sched_domain]);
	if (depth != kqd->domain_tokens[sched_domain].sb.depth) {
		FUNC1(&kqd->domain_tokens[sched_domain], depth);
		FUNC2(kqd->q, kyber_domain_names[sched_domain],
				   depth);
	}
}