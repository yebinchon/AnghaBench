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
struct crypto_async_request {int /*<<< orphan*/  tfm; } ;
struct cryptd_queue {int /*<<< orphan*/  cpu_queue; } ;
struct cryptd_cpu_queue {int /*<<< orphan*/  work; int /*<<< orphan*/  queue; } ;
typedef  int /*<<< orphan*/  refcount_t ;

/* Variables and functions */
 int ENOSPC ; 
 int /*<<< orphan*/  cryptd_wq ; 
 int FUNC0 (int /*<<< orphan*/ *,struct crypto_async_request*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 struct cryptd_cpu_queue* FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct cryptd_queue *queue,
				  struct crypto_async_request *request)
{
	int cpu, err;
	struct cryptd_cpu_queue *cpu_queue;
	refcount_t *refcnt;

	cpu = FUNC2();
	cpu_queue = FUNC7(queue->cpu_queue);
	err = FUNC0(&cpu_queue->queue, request);

	refcnt = FUNC1(request->tfm);

	if (err == -ENOSPC)
		goto out_put_cpu;

	FUNC4(cpu, cryptd_wq, &cpu_queue->work);

	if (!FUNC6(refcnt))
		goto out_put_cpu;

	FUNC5(refcnt);

out_put_cpu:
	FUNC3();

	return err;
}