#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct st_h2o_http1client_t {TYPE_1__* sock; scalar_t__ bytes_to_consume; } ;
struct TYPE_4__ {int /*<<< orphan*/  input; } ;
typedef  TYPE_1__ h2o_socket_t ;
typedef  int /*<<< orphan*/  h2o_httpclient_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 

__attribute__((used)) static h2o_socket_t *FUNC2(h2o_httpclient_t *_client)
{
    struct st_h2o_http1client_t *client = (void *)_client;
    h2o_socket_t *sock = client->sock;
    FUNC1(sock);
    FUNC0(&sock->input, client->bytes_to_consume);
    client->bytes_to_consume = 0;
    client->sock = NULL;
    return sock;
}