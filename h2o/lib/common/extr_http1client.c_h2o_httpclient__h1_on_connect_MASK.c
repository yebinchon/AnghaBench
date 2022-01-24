#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  _timeout; } ;
struct st_h2o_http1client_t {TYPE_1__ super; } ;
typedef  int /*<<< orphan*/  h2o_url_t ;
typedef  int /*<<< orphan*/  h2o_socket_t ;
typedef  int /*<<< orphan*/  h2o_httpclient_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct st_h2o_http1client_t*) ; 
 int /*<<< orphan*/  FUNC3 (struct st_h2o_http1client_t*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void FUNC4(h2o_httpclient_t *_client, h2o_socket_t *sock, h2o_url_t *origin)
{
    struct st_h2o_http1client_t *client = (void *)_client;

    FUNC0(!FUNC1(&client->super._timeout));

    FUNC3(client, sock, origin);
    FUNC2(client);
}