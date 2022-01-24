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
struct TYPE_2__ {int /*<<< orphan*/  lifetime; } ;
typedef  int /*<<< orphan*/  SSL_CTX ;

/* Variables and functions */
 int /*<<< orphan*/  H2O_SESSID_CTX ; 
 int /*<<< orphan*/  H2O_SESSID_CTX_LEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int SSL_SESS_CACHE_NO_AUTO_CLEAR ; 
 int SSL_SESS_CACHE_SERVER ; 
 TYPE_1__ conf ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ **,size_t) ; 

__attribute__((used)) static void FUNC5(SSL_CTX **contexts, size_t num_contexts, int async_resumption)
{
    size_t i;
    for (i = 0; i != num_contexts; ++i) {
        FUNC0(contexts[i], SSL_SESS_CACHE_SERVER | SSL_SESS_CACHE_NO_AUTO_CLEAR);
        FUNC1(contexts[i], H2O_SESSID_CTX, H2O_SESSID_CTX_LEN);
        FUNC2(contexts[i], conf.lifetime);
        if (async_resumption)
            FUNC3(contexts[i]);
    }
    FUNC4(contexts, num_contexts);
}