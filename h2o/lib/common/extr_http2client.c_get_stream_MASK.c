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
typedef  int /*<<< orphan*/  uint32_t ;
struct st_h2o_http2client_stream_t {int dummy; } ;
struct st_h2o_http2client_conn_t {int /*<<< orphan*/  streams; } ;
typedef  scalar_t__ khiter_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  stream ; 

__attribute__((used)) static struct st_h2o_http2client_stream_t *FUNC3(struct st_h2o_http2client_conn_t *conn, uint32_t stream_id)
{
    khiter_t iter = FUNC1(stream, conn->streams, stream_id);
    if (iter != FUNC0(conn->streams))
        return (struct st_h2o_http2client_stream_t *)FUNC2(conn->streams, iter);
    return NULL;
}