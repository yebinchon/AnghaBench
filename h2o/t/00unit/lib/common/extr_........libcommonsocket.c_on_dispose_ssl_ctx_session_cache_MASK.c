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
typedef  int /*<<< orphan*/  h2o_cache_t ;
typedef  int /*<<< orphan*/  CRYPTO_EX_DATA ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC1(void *parent, void *ptr, CRYPTO_EX_DATA *ad, int idx, long argl, void *argp)
{
    h2o_cache_t *ssl_session_cache = (h2o_cache_t *)ptr;
    if (ssl_session_cache != NULL)
        FUNC0(ssl_session_cache);
}