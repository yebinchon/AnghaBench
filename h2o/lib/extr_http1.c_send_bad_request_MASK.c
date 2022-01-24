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
struct st_h2o_http1_conn_t {int /*<<< orphan*/  req; int /*<<< orphan*/  sock; } ;

/* Variables and functions */
 int /*<<< orphan*/  H2O_SEND_ERROR_HTTP1_CLOSE_CONNECTION ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct st_h2o_http1_conn_t *conn, const char *body)
{
    FUNC1(conn->sock);
    FUNC0(&conn->req, "Bad Request", body, H2O_SEND_ERROR_HTTP1_CLOSE_CONNECTION);
}