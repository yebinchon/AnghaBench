#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  encrypted; } ;
struct TYPE_5__ {struct st_h2o_socket_ssl_t* base; } ;
struct TYPE_6__ {TYPE_1__ session_cache_key; struct st_h2o_socket_ssl_t* server_name; } ;
struct TYPE_7__ {TYPE_2__ client; } ;
struct st_h2o_socket_ssl_t {TYPE_4__ input; int /*<<< orphan*/ * ossl; TYPE_3__ handshake; int /*<<< orphan*/ * ptls; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct st_h2o_socket_ssl_t*) ; 
 int /*<<< orphan*/  FUNC3 (struct st_h2o_socket_ssl_t*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct st_h2o_socket_ssl_t *ssl)
{
    if (ssl->ptls != NULL) {
        FUNC5(ssl->ptls);
        ssl->ptls = NULL;
    }
    if (ssl->ossl != NULL) {
        if (!FUNC1(ssl->ossl)) {
            FUNC3(ssl->handshake.client.server_name);
            FUNC3(ssl->handshake.client.session_cache_key.base);
        }
        FUNC0(ssl->ossl);
        ssl->ossl = NULL;
    }
    FUNC4(&ssl->input.encrypted);
    FUNC2(ssl);
    FUNC3(ssl);
}