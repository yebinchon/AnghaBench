#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint16_t ;
typedef  int /*<<< orphan*/  pthread_t ;
typedef  int /*<<< orphan*/  pthread_attr_t ;
struct TYPE_7__ {int /*<<< orphan*/  base; } ;
struct TYPE_6__ {int text_protocol; TYPE_2__ prefix; int /*<<< orphan*/  port; int /*<<< orphan*/  host; scalar_t__ num_threads_connected; int /*<<< orphan*/  pending; int /*<<< orphan*/  cond; int /*<<< orphan*/  mutex; } ;
typedef  TYPE_1__ h2o_memcached_context_t ;

/* Variables and functions */
 int /*<<< orphan*/  SIZE_MAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__*) ; 
 TYPE_2__ FUNC3 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  thread_main ; 

h2o_memcached_context_t *FUNC9(const char *host, uint16_t port, int text_protocol, size_t num_threads,
                                                      const char *prefix)
{
    h2o_memcached_context_t *ctx = FUNC1(sizeof(*ctx));

    FUNC8(&ctx->mutex, NULL);
    FUNC7(&ctx->cond, NULL);
    FUNC0(&ctx->pending);
    ctx->num_threads_connected = 0;
    ctx->host = FUNC3(NULL, host, SIZE_MAX).base;
    ctx->port = port;
    ctx->text_protocol = text_protocol;
    ctx->prefix = FUNC3(NULL, prefix, SIZE_MAX);

    { /* start the threads */
        pthread_t tid;
        pthread_attr_t attr;
        size_t i;
        FUNC5(&attr);
        FUNC6(&attr, 1);
        for (i = 0; i != num_threads; ++i)
            FUNC2(&tid, &attr, thread_main, ctx);
        FUNC4(&attr);
    }

    return ctx;
}