#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct st_h2o_tunnel_t {TYPE_2__** sock; } ;
struct TYPE_9__ {scalar_t__ bytes_read; TYPE_1__* input; struct st_h2o_tunnel_t* data; } ;
typedef  TYPE_2__ h2o_socket_t ;
struct TYPE_10__ {int /*<<< orphan*/  len; int /*<<< orphan*/  base; } ;
typedef  TYPE_3__ h2o_iovec_t ;
struct TYPE_8__ {int /*<<< orphan*/  size; int /*<<< orphan*/  bytes; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct st_h2o_tunnel_t*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,TYPE_3__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  on_write_complete ; 
 int /*<<< orphan*/  FUNC4 (struct st_h2o_tunnel_t*) ; 

__attribute__((used)) static void FUNC5(h2o_socket_t *sock, const char *err)
{
    struct st_h2o_tunnel_t *tunnel = sock->data;
    h2o_socket_t *dst;
    FUNC0(tunnel != NULL);
    FUNC0(tunnel->sock[0] == sock || tunnel->sock[1] == sock);

    if (err != NULL) {
        FUNC1(tunnel);
        return;
    }

    if (sock->bytes_read == 0)
        return;

    FUNC2(sock);
    FUNC4(tunnel);

    if (tunnel->sock[0] == sock)
        dst = tunnel->sock[1];
    else
        dst = tunnel->sock[0];

    h2o_iovec_t buf;
    buf.base = sock->input->bytes;
    buf.len = sock->input->size;
    FUNC3(dst, &buf, 1, on_write_complete);
}