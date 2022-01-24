#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ cb; } ;
struct st_h2o_http3client_conn_t {TYPE_1__ timeout; } ;
typedef  int /*<<< orphan*/  h2o_http3_ctx_t ;
typedef  int /*<<< orphan*/  h2o_http3_conn_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 scalar_t__ on_connect_timeout ; 

void FUNC2(h2o_http3_ctx_t *ctx, h2o_http3_conn_t *_conn)
{
    struct st_h2o_http3client_conn_t *conn = (void *)_conn;

    if (FUNC0(&conn->timeout) && conn->timeout.cb == on_connect_timeout)
        FUNC1(&conn->timeout);
}