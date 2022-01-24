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
struct rp_ws_upgrade_info_t {int /*<<< orphan*/  upstream_sock; int /*<<< orphan*/  timeout; int /*<<< orphan*/  ctx; } ;
struct TYPE_4__ {int /*<<< orphan*/  input; } ;
typedef  TYPE_1__ h2o_socket_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct rp_ws_upgrade_info_t*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(void *_info, h2o_socket_t *sock, size_t reqsize)
{
    struct rp_ws_upgrade_info_t *info = _info;

    if (sock != NULL) {
        FUNC1(&sock->input, reqsize); // It is detached from conn. Let's trash unused data.
        FUNC3(info->ctx, sock, info->upstream_sock, info->timeout);
    } else {
        FUNC2(info->upstream_sock);
    }
    FUNC0(info);
}