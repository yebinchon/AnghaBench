#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  pthread_t ;
struct TYPE_4__ {scalar_t__ data; TYPE_2__* pl; scalar_t__ running; scalar_t__ step; } ;
typedef  TYPE_1__ ktp_worker_t ;
struct TYPE_5__ {int n_workers; int n_steps; void* (* func ) (void*,int,void*) ;int /*<<< orphan*/  cv; int /*<<< orphan*/  mutex; TYPE_1__* workers; void* shared; } ;
typedef  TYPE_2__ ktp_t ;

/* Variables and functions */
 void* FUNC0 (int) ; 
 int /*<<< orphan*/  ktp_worker ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void FUNC7(int n_threads, void *(*func)(void*, int, void*), void *shared_data, int n_steps)
{
	ktp_t aux;
	pthread_t *tid;
	int i;

	if (n_threads < 1) n_threads = 1;
	aux.n_workers = n_threads;
	aux.n_steps = n_steps;
	aux.func = func;
	aux.shared = shared_data;
	FUNC6(&aux.mutex, 0);
	FUNC2(&aux.cv, 0);

	aux.workers = FUNC0(n_threads * sizeof(ktp_worker_t));
	for (i = 0; i < n_threads; ++i) {
		ktp_worker_t *w = &aux.workers[i];
		w->step = w->running = 0; w->pl = &aux; w->data = 0;
	}

	tid = FUNC0(n_threads * sizeof(pthread_t));
	for (i = 0; i < n_threads; ++i) FUNC3(&tid[i], 0, ktp_worker, &aux.workers[i]);
	for (i = 0; i < n_threads; ++i) FUNC4(tid[i], 0);

	FUNC5(&aux.mutex);
	FUNC1(&aux.cv);
}