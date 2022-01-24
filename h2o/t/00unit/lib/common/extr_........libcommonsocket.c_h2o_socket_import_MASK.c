#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int /*<<< orphan*/  input; TYPE_2__* ssl; } ;
typedef  TYPE_3__ h2o_socket_t ;
struct TYPE_13__ {int fd; int /*<<< orphan*/  input; TYPE_2__* ssl; } ;
typedef  TYPE_4__ h2o_socket_export_t ;
typedef  int /*<<< orphan*/  h2o_loop_t ;
struct TYPE_10__ {int /*<<< orphan*/  encrypted; } ;
struct TYPE_11__ {TYPE_1__ input; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_3__* FUNC1 (int /*<<< orphan*/ *,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  h2o_socket_buffer_prototype ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 

h2o_socket_t *FUNC4(h2o_loop_t *loop, h2o_socket_export_t *info)
{
    h2o_socket_t *sock;

    FUNC0(info->fd != -1);

    sock = FUNC1(loop, info);
    info->fd = -1; /* just in case */
    if ((sock->ssl = info->ssl) != NULL) {
        FUNC3(sock);
        FUNC2(&sock->ssl->input.encrypted, &h2o_socket_buffer_prototype);
    }
    sock->input = info->input;
    FUNC2(&sock->input, &h2o_socket_buffer_prototype);
    return sock;
}