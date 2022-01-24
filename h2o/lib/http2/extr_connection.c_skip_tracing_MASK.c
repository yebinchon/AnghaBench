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
struct st_h2o_http2_conn_t {int /*<<< orphan*/ * sock; } ;
typedef  int /*<<< orphan*/  h2o_conn_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(h2o_conn_t *_conn)
{
    struct st_h2o_http2_conn_t *conn = (void *)_conn;
    FUNC0(conn->sock != NULL && "it never becomes NULL, right?");
    return FUNC1(conn->sock);
}