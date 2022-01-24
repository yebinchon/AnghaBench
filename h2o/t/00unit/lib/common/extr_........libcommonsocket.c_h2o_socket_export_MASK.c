#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {int /*<<< orphan*/  input; TYPE_2__* ssl; } ;
typedef  TYPE_3__ h2o_socket_t ;
struct TYPE_14__ {int /*<<< orphan*/  input; TYPE_2__* ssl; } ;
typedef  TYPE_4__ h2o_socket_export_t ;
typedef  int /*<<< orphan*/  h2o_buffer_prototype_t ;
struct TYPE_11__ {int /*<<< orphan*/  encrypted; } ;
struct TYPE_12__ {TYPE_1__ input; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (TYPE_3__*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  h2o_socket_buffer_prototype ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 

int FUNC6(h2o_socket_t *sock, h2o_socket_export_t *info)
{
    static h2o_buffer_prototype_t nonpooling_prototype;

    FUNC0(!FUNC5(sock));

    if (FUNC1(sock, info) == -1)
        return -1;

    if ((info->ssl = sock->ssl) != NULL) {
        sock->ssl = NULL;
        FUNC3(&info->ssl->input.encrypted, &nonpooling_prototype);
    }
    info->input = sock->input;
    FUNC3(&info->input, &nonpooling_prototype);
    FUNC2(&sock->input, &h2o_socket_buffer_prototype);

    FUNC4(sock);

    return 0;
}