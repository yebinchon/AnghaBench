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
typedef  int /*<<< orphan*/  h2o_socket_t ;
struct TYPE_3__ {scalar_t__ base; int /*<<< orphan*/  len; } ;
typedef  TYPE_1__ h2o_iovec_t ;
typedef  int /*<<< orphan*/  SSL_SESSION ;
typedef  int /*<<< orphan*/  SSL ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned char* FUNC1 (int /*<<< orphan*/ *,unsigned int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (unsigned char const*,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned char**) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__) ; 

__attribute__((used)) static int FUNC7(SSL *ssl, SSL_SESSION *session)
{
    h2o_socket_t *sock = FUNC0(FUNC2(ssl));

    h2o_iovec_t data;
    const unsigned char *id;
    unsigned id_len;
    unsigned char *p;

    /* build data */
    data.len = FUNC5(session, NULL);
    data.base = FUNC3(data.len);
    p = (void *)data.base;
    FUNC5(session, &p);

    id = FUNC1(session, &id_len);
    FUNC6(sock, FUNC4(id, id_len), data);
    return 0;
}