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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SSL_SESS_CACHE_OFF ; 

__attribute__((used)) static void FUNC1(SSL_CTX **contexts, size_t num_contexts)
{
    size_t i;
    for (i = 0; i != num_contexts; ++i)
        FUNC0(contexts[i], SSL_SESS_CACHE_OFF);
}