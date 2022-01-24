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
typedef  int /*<<< orphan*/  SSL_CTX ;

/* Variables and functions */
 int /*<<< orphan*/  H2O_SESSID_CTX ; 
 int /*<<< orphan*/  H2O_SESSID_CTX_LEN ; 
 long FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 long SSL_OP_NO_RENEGOTIATION ; 
 long SSL_OP_NO_SSLv2 ; 
 long SSL_OP_NO_SSLv3 ; 
 int SSL_SESS_CACHE_CLIENT ; 
 int SSL_SESS_CACHE_NO_INTERNAL_STORE ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  h2o_socket_ssl_new_session_cb ; 

__attribute__((used)) static SSL_CTX *FUNC7(void)
{
    long options;
    SSL_CTX *ctx = FUNC1(FUNC6());
    options = FUNC0(ctx) | SSL_OP_NO_SSLv2 | SSL_OP_NO_SSLv3;
#ifdef SSL_OP_NO_RENEGOTIATION
    /* introduced in openssl 1.1.0h */
    options |= SSL_OP_NO_RENEGOTIATION;
#endif
    FUNC3(ctx, options);
    FUNC5(ctx, H2O_SESSID_CTX, H2O_SESSID_CTX_LEN);
    FUNC4(ctx, SSL_SESS_CACHE_CLIENT | SSL_SESS_CACHE_NO_INTERNAL_STORE);
    FUNC2(ctx, h2o_socket_ssl_new_session_cb);
    return ctx;
}