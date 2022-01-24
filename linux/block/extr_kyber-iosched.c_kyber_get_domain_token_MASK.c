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
struct TYPE_4__ {int /*<<< orphan*/  lock; } ;
struct sbq_wait_state {TYPE_2__ wait; } ;
struct TYPE_3__ {int /*<<< orphan*/  entry; } ;
struct sbq_wait {TYPE_1__ wait; } ;
struct sbitmap_queue {int dummy; } ;
struct kyber_queue_data {struct sbitmap_queue* domain_tokens; } ;
struct kyber_hctx_data {unsigned int cur_domain; struct sbq_wait_state** domain_ws; int /*<<< orphan*/ * wait_index; struct sbq_wait* domain_wait; } ;
struct blk_mq_hw_ctx {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct sbitmap_queue*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct sbitmap_queue*,struct sbq_wait_state*,struct sbq_wait*) ; 
 int /*<<< orphan*/  FUNC3 (struct sbq_wait*) ; 
 struct sbq_wait_state* FUNC4 (struct sbitmap_queue*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct kyber_queue_data *kqd,
				  struct kyber_hctx_data *khd,
				  struct blk_mq_hw_ctx *hctx)
{
	unsigned int sched_domain = khd->cur_domain;
	struct sbitmap_queue *domain_tokens = &kqd->domain_tokens[sched_domain];
	struct sbq_wait *wait = &khd->domain_wait[sched_domain];
	struct sbq_wait_state *ws;
	int nr;

	nr = FUNC0(domain_tokens);

	/*
	 * If we failed to get a domain token, make sure the hardware queue is
	 * run when one becomes available. Note that this is serialized on
	 * khd->lock, but we still need to be careful about the waker.
	 */
	if (nr < 0 && FUNC1(&wait->wait.entry)) {
		ws = FUNC4(domain_tokens,
				  &khd->wait_index[sched_domain]);
		khd->domain_ws[sched_domain] = ws;
		FUNC2(domain_tokens, ws, wait);

		/*
		 * Try again in case a token was freed before we got on the wait
		 * queue.
		 */
		nr = FUNC0(domain_tokens);
	}

	/*
	 * If we got a token while we were on the wait queue, remove ourselves
	 * from the wait queue to ensure that all wake ups make forward
	 * progress. It's possible that the waker already deleted the entry
	 * between the !list_empty_careful() check and us grabbing the lock, but
	 * list_del_init() is okay with that.
	 */
	if (nr >= 0 && !FUNC1(&wait->wait.entry)) {
		ws = khd->domain_ws[sched_domain];
		FUNC5(&ws->wait.lock);
		FUNC3(wait);
		FUNC6(&ws->wait.lock);
	}

	return nr;
}