#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  ctx; TYPE_3__** buf; } ;
typedef  TYPE_1__ h2o_httpclient_t ;
struct TYPE_5__ {int /*<<< orphan*/  size; int /*<<< orphan*/  bytes; } ;

/* Variables and functions */
 scalar_t__ cnt_left ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__**,int /*<<< orphan*/ ) ; 
 char const* h2o_httpclient_error_is_eos ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  pool ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stdout ; 

__attribute__((used)) static int FUNC8(h2o_httpclient_t *client, const char *errstr)
{
    if (errstr != NULL && errstr != h2o_httpclient_error_is_eos) {
        FUNC6(client->ctx, errstr);
        return -1;
    }

    FUNC3((*client->buf)->bytes, 1, (*client->buf)->size, stdout);
    FUNC0(stdout);
    FUNC4(&(*client->buf), (*client->buf)->size);

    if (errstr == h2o_httpclient_error_is_eos) {
        if (--cnt_left != 0) {
            /* next attempt */
            FUNC5(&pool);
            FUNC2(FUNC1(stdout), 0); /* ignore error when stdout is a tty */
            FUNC7(client->ctx);
        }
    }

    return 0;
}