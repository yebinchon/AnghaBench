#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  pthread_t ;
typedef  int /*<<< orphan*/  pthread_attr_t ;
typedef  int /*<<< orphan*/  buf ;
struct TYPE_2__ {scalar_t__ num_threads; int /*<<< orphan*/  num_threads_idle; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,int) ; 
 int /*<<< orphan*/  lookup_thread_main ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_1__ queue ; 

__attribute__((used)) static void FUNC7(void)
{
    pthread_t tid;
    pthread_attr_t attr;
    int ret;

    FUNC3(&attr);
    FUNC4(&attr, 1);
    FUNC5(&attr, 100 * 1024);
    if ((ret = FUNC6(&tid, NULL, lookup_thread_main, NULL)) != 0) {
        char buf[128];
        if (queue.num_threads == 0) {
            FUNC1("failed to start first thread for getaddrinfo: %s", FUNC2(ret, buf, sizeof(buf)));
        } else {
            FUNC0("pthread_create(for getaddrinfo): %s", FUNC2(ret, buf, sizeof(buf)));
        }
        return;
    }

    ++queue.num_threads;
    ++queue.num_threads_idle;
}