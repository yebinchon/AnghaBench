#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct sockaddr {int dummy; } ;
typedef  int /*<<< orphan*/  socklen_t ;
struct TYPE_7__ {TYPE_1__* _peername; } ;
typedef  TYPE_2__ h2o_socket_t ;
struct TYPE_6__ {int /*<<< orphan*/  len; int /*<<< orphan*/  addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,struct sockaddr*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,struct sockaddr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sockaddr*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

socklen_t FUNC3(h2o_socket_t *sock, struct sockaddr *sa)
{
    /* return cached, if exists */
    if (sock->_peername != NULL) {
        FUNC2(sa, &sock->_peername->addr, sock->_peername->len);
        return sock->_peername->len;
    }
    /* call, copy to cache, and return */
    socklen_t len = FUNC0(sock, sa);
    FUNC1(sock, sa, len);
    return len;
}