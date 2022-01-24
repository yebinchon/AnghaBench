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
typedef  int /*<<< orphan*/  pthread_t ;
typedef  int /*<<< orphan*/  pthread_attr_t ;
typedef  int /*<<< orphan*/  SSL_CTX ;

/* Variables and functions */
 int /*<<< orphan*/  cache_cleanup_thread ; 
 int /*<<< orphan*/ ** FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ **,int /*<<< orphan*/ **,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC5(SSL_CTX **_contexts, size_t num_contexts)
{
    /* copy the list of contexts */
    SSL_CTX **contexts = FUNC0(sizeof(*contexts) * (num_contexts + 1));
    FUNC1(contexts, _contexts, sizeof(*contexts) * num_contexts);
    contexts[num_contexts] = NULL;

    /* launch the thread */
    pthread_t tid;
    pthread_attr_t attr;
    FUNC3(&attr);
    FUNC4(&attr, 1);
    FUNC2(&tid, &attr, cache_cleanup_thread, contexts);
}