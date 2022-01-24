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
struct TYPE_4__ {int /*<<< orphan*/  cb; } ;
struct st_util_log_event_t {TYPE_1__ super; int /*<<< orphan*/ * fp; } ;
struct TYPE_5__ {TYPE_1__* log_event; } ;
typedef  TYPE_2__ ptls_context_t ;

/* Variables and functions */
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/ * FUNC1 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char const*,char*) ; 
 int /*<<< orphan*/  log_event_cb ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC4(ptls_context_t *ctx, const char *fn)
{
    static struct st_util_log_event_t ls;

    if ((ls.fp = FUNC1(fn, "at")) == NULL) {
        FUNC2(stderr, "failed to open file:%s:%s\n", fn, FUNC3(errno));
        FUNC0(1);
    }
    ls.super.cb = log_event_cb;
    ctx->log_event = &ls.super;
}