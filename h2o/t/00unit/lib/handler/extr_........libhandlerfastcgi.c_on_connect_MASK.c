#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_8__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct st_fcgi_generator_t {TYPE_1__* handler; TYPE_3__* sock; int /*<<< orphan*/  req; int /*<<< orphan*/ * connect_req; } ;
struct TYPE_10__ {int /*<<< orphan*/  size; int /*<<< orphan*/  entries; } ;
typedef  TYPE_2__ iovec_vector_t ;
typedef  int /*<<< orphan*/  h2o_url_t ;
struct TYPE_11__ {struct st_fcgi_generator_t* data; } ;
typedef  TYPE_3__ h2o_socket_t ;
struct TYPE_12__ {int /*<<< orphan*/  io_timeout; } ;
struct TYPE_9__ {TYPE_8__ config; } ;

/* Variables and functions */
 int /*<<< orphan*/  MODULE_NAME ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_2__*,int,int,TYPE_8__*) ; 
 int /*<<< orphan*/  FUNC1 (struct st_fcgi_generator_t*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  on_read ; 
 int /*<<< orphan*/  on_rw_timeout ; 
 int /*<<< orphan*/  on_send_complete ; 
 int /*<<< orphan*/  FUNC5 (struct st_fcgi_generator_t*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(h2o_socket_t *sock, const char *errstr, void *data, h2o_url_t *_dummy)
{
    struct st_fcgi_generator_t *generator = data;
    iovec_vector_t vecs;

    generator->connect_req = NULL;

    if (sock == NULL) {
        FUNC2(generator->req, MODULE_NAME, "connection failed:%s", errstr);
        FUNC1(generator);
        return;
    }

    generator->sock = sock;
    sock->data = generator;

    FUNC0(generator->req, &vecs, 1, 65535, &generator->handler->config);

    /* start sending the response */
    FUNC4(generator->sock, vecs.entries, vecs.size, on_send_complete);

    FUNC5(generator, generator->handler->config.io_timeout, on_rw_timeout);

    /* activate the receiver; note: FCGI spec allows the app to start sending the response before it receives FCGI_STDIN */
    FUNC3(sock, on_read);
}