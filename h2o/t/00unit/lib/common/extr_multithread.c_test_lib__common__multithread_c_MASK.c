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
typedef  int /*<<< orphan*/  pthread_t ;
struct TYPE_4__ {void* loop; void* queue; int /*<<< orphan*/  shutdown_receiver; int /*<<< orphan*/  pong_receiver; int /*<<< orphan*/  received_shutdown; } ;
struct TYPE_3__ {void* loop; void* queue; int /*<<< orphan*/  ping_receiver; } ;

/* Variables and functions */
 int /*<<< orphan*/  INT32_MAX ; 
 int /*<<< orphan*/  UV_RUN_ONCE ; 
 void* FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (void*,int /*<<< orphan*/ ) ; 
 void* FUNC3 (void*) ; 
 int /*<<< orphan*/  FUNC4 (void*) ; 
 int /*<<< orphan*/  FUNC5 (void*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (void*,int /*<<< orphan*/ *) ; 
 TYPE_2__ main_thread ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  on_ping ; 
 int /*<<< orphan*/  on_pong ; 
 int /*<<< orphan*/  on_shutdown ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  worker_main ; 
 TYPE_1__ worker_thread ; 

void FUNC12(void)
{
    pthread_t tid;

    main_thread.loop = FUNC0();
    main_thread.queue = FUNC3(main_thread.loop);
    FUNC5(main_thread.queue, &main_thread.pong_receiver, on_pong);
    FUNC5(main_thread.queue, &main_thread.shutdown_receiver, on_shutdown);
    worker_thread.loop = FUNC0();
    worker_thread.queue = FUNC3(worker_thread.loop);
    FUNC5(worker_thread.queue, &worker_thread.ping_receiver, on_ping);

    FUNC8(&tid, NULL, worker_main, NULL);

    /* send first message */
    FUNC10(&worker_thread.ping_receiver);

    while (!main_thread.received_shutdown) {
#if H2O_USE_LIBUV
        uv_run(main_thread.loop, UV_RUN_ONCE);
#else
        FUNC2(main_thread.loop, INT32_MAX);
#endif
    }

    FUNC9(tid, NULL);

    FUNC6(worker_thread.queue, &worker_thread.ping_receiver);
    FUNC4(worker_thread.queue);
    FUNC1(worker_thread.loop);
    FUNC6(main_thread.queue, &main_thread.pong_receiver);
    FUNC6(main_thread.queue, &main_thread.shutdown_receiver);
    FUNC4(main_thread.queue);
    FUNC1(main_thread.loop);

    FUNC7(1);
}