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
struct TYPE_3__ {int fd; int /*<<< orphan*/  input; int /*<<< orphan*/ * ssl; } ;
typedef  TYPE_1__ h2o_socket_export_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(h2o_socket_export_t *info)
{
    FUNC0(info->fd != -1);
    if (info->ssl != NULL) {
        FUNC2(info->ssl);
        info->ssl = NULL;
    }
    FUNC3(&info->input);
    FUNC1(info->fd);
    info->fd = -1;
}