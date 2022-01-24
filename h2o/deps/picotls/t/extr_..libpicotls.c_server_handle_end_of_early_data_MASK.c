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
struct TYPE_6__ {int /*<<< orphan*/  state; int /*<<< orphan*/  key_schedule; } ;
typedef  TYPE_1__ ptls_t ;
struct TYPE_7__ {int /*<<< orphan*/  len; int /*<<< orphan*/  base; } ;
typedef  TYPE_2__ ptls_iovec_t ;

/* Variables and functions */
 int PTLS_ERROR_IN_PROGRESS ; 
 int /*<<< orphan*/  PTLS_STATE_SERVER_EXPECT_FINISHED ; 
 int FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(ptls_t *tls, ptls_iovec_t message)
{
    int ret;

    if ((ret = FUNC0(tls)) != 0)
        goto Exit;

    FUNC1(tls->key_schedule, message.base, message.len);
    tls->state = PTLS_STATE_SERVER_EXPECT_FINISHED;
    ret = PTLS_ERROR_IN_PROGRESS;

Exit:
    return ret;
}