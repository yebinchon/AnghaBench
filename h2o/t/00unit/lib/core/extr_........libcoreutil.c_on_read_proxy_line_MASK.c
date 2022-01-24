#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_9__ ;
typedef  struct TYPE_12__   TYPE_8__ ;
typedef  struct TYPE_11__   TYPE_6__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct st_h2o_accept_data_t {int /*<<< orphan*/  connected_at; TYPE_6__* ctx; } ;
struct sockaddr_storage {int dummy; } ;
typedef  int ssize_t ;
typedef  int /*<<< orphan*/  socklen_t ;
struct TYPE_10__ {struct st_h2o_accept_data_t* data; TYPE_8__* input; } ;
typedef  TYPE_1__ h2o_socket_t ;
struct TYPE_13__ {int /*<<< orphan*/  (* destroy ) (struct st_h2o_accept_data_t*) ;} ;
struct TYPE_12__ {int /*<<< orphan*/  size; int /*<<< orphan*/  bytes; } ;
struct TYPE_11__ {int /*<<< orphan*/ * ssl_ctx; } ;

/* Variables and functions */
 TYPE_9__ accept_data_callbacks ; 
 int /*<<< orphan*/  FUNC0 (TYPE_8__**,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_6__*,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  on_ssl_handshake_complete ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct st_h2o_accept_data_t*) ; 
 int /*<<< orphan*/  FUNC8 (struct st_h2o_accept_data_t*) ; 

__attribute__((used)) static void FUNC9(h2o_socket_t *sock, const char *err)
{
    struct st_h2o_accept_data_t *data = sock->data;

    if (err != NULL) {
        accept_data_callbacks.destroy(data);
        FUNC3(sock);
        return;
    }

    struct sockaddr_storage addr;
    socklen_t addrlen;
    ssize_t r = FUNC6(sock->input->bytes, sock->input->size, (void *)&addr, &addrlen);
    switch (r) {
    case -1: /* error, just pass the input to the next handler */
        break;
    case -2: /* incomplete */
        return;
    default:
        FUNC0(&sock->input, r);
        if (addrlen != 0)
            FUNC4(sock, (void *)&addr, addrlen);
        break;
    }

    if (data->ctx->ssl_ctx != NULL) {
        FUNC5(sock, data->ctx->ssl_ctx, NULL, FUNC2(NULL, 0), on_ssl_handshake_complete);
    } else {
        struct st_h2o_accept_data_t *data = sock->data;
        sock->data = NULL;
        FUNC1(data->ctx, sock, data->connected_at);
        accept_data_callbacks.destroy(data);
    }
}