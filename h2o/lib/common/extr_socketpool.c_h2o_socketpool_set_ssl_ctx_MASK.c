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
struct TYPE_3__ {int /*<<< orphan*/ * _ssl_ctx; } ;
typedef  TYPE_1__ h2o_socketpool_t ;
typedef  int /*<<< orphan*/  SSL_CTX ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

void FUNC2(h2o_socketpool_t *pool, SSL_CTX *ssl_ctx)
{
    if (pool->_ssl_ctx != NULL)
        FUNC0(pool->_ssl_ctx);
    if (ssl_ctx != NULL)
        FUNC1(ssl_ctx);
    pool->_ssl_ctx = ssl_ctx;
}