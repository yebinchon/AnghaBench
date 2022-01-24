#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  h2o_socket_t ;
struct TYPE_4__ {char* base; size_t len; } ;
typedef  TYPE_1__ h2o_iovec_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,size_t) ; 
 size_t FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  latopt_cond ; 
 TYPE_1__ FUNC3 () ; 
 scalar_t__ server_flag_received ; 
 int /*<<< orphan*/  server_on_write_complete ; 
 int /*<<< orphan*/  stderr ; 

void FUNC4(h2o_socket_t *sock)
{
    size_t sz = FUNC1(sock, &latopt_cond);
    h2o_iovec_t buf = FUNC3();

    if (server_flag_received)
        buf.base[0] = '1';
    if (sz < buf.len)
        buf.len = sz;

    FUNC0(stderr, "writing %zu bytes\n", buf.len);
    FUNC2(sock, &buf, 1, server_on_write_complete);
}