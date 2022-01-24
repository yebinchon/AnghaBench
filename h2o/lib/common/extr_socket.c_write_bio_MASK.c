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
struct TYPE_6__ {TYPE_1__* ssl; } ;
typedef  TYPE_2__ h2o_socket_t ;
struct TYPE_5__ {int* did_write_in_read; } ;
typedef  int /*<<< orphan*/  BIO ;

/* Variables and functions */
 TYPE_2__* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,char const*,int) ; 

__attribute__((used)) static int FUNC2(BIO *b, const char *in, int len)
{
    h2o_socket_t *sock = FUNC0(b);

    /* FIXME no support for SSL renegotiation (yet) */
    if (sock->ssl->did_write_in_read != NULL) {
        *sock->ssl->did_write_in_read = 1;
        return -1;
    }

    FUNC1(sock, in, len);
    return len;
}