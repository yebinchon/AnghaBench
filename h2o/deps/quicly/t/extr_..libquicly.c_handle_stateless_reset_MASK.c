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
typedef  int /*<<< orphan*/  quicly_conn_t ;

/* Variables and functions */
 int /*<<< orphan*/  QUICLY_ERROR_RECEIVED_STATELESS_RESET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  STATELESS_RESET_RECEIVE ; 
 int /*<<< orphan*/  UINT64_MAX ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(quicly_conn_t *conn)
{
    FUNC0(STATELESS_RESET_RECEIVE, conn, FUNC2());
    return FUNC1(conn, QUICLY_ERROR_RECEIVED_STATELESS_RESET, UINT64_MAX, FUNC3("", 0));
}