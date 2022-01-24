#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {void (* cb ) (void*) ;void* data; } ;
struct TYPE_6__ {TYPE_1__ on_close; int /*<<< orphan*/ * _peername; int /*<<< orphan*/  input; int /*<<< orphan*/ * ssl; } ;
typedef  TYPE_2__ h2o_socket_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(h2o_socket_t *sock, const char *err)
{
    void (*close_cb)(void *data);
    void *close_cb_data;

    if (sock->ssl != NULL) {
        FUNC0(sock->ssl);
        sock->ssl = NULL;
    }
    FUNC3(&sock->input);
    if (sock->_peername != NULL) {
        FUNC2(sock->_peername);
        sock->_peername = NULL;
    }

    close_cb = sock->on_close.cb;
    close_cb_data = sock->on_close.data;

    FUNC1(sock);

    if (close_cb != NULL)
        close_cb(close_cb_data);
}