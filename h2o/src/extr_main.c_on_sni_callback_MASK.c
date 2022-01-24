#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct listener_ssl_config_t {scalar_t__ ctx; } ;
struct listener_config_t {int dummy; } ;
typedef  int /*<<< orphan*/  SSL ;

/* Variables and functions */
 int SSL_TLSEXT_ERR_OK ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 char* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  TLSEXT_NAMETYPE_host_name ; 
 struct listener_ssl_config_t* FUNC3 (struct listener_config_t*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char const*) ; 

__attribute__((used)) static int FUNC5(SSL *ssl, int *ad, void *arg)
{
    struct listener_config_t *listener = arg;
    const char *server_name = FUNC1(ssl, TLSEXT_NAMETYPE_host_name);

    if (server_name != NULL) {
        struct listener_ssl_config_t *resolved = FUNC3(listener, server_name, FUNC4(server_name));
        if (resolved->ctx != FUNC0(ssl))
            FUNC2(ssl, resolved->ctx);
    }

    return SSL_TLSEXT_ERR_OK;
}