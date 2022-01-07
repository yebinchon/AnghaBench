
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pthread_t ;
typedef int pthread_attr_t ;
typedef int SSL_CTX ;


 int cache_cleanup_thread ;
 int ** h2o_mem_alloc (int) ;
 int h2o_memcpy (int **,int **,int) ;
 int h2o_multithread_create_thread (int *,int *,int ,int **) ;
 int pthread_attr_init (int *) ;
 int pthread_attr_setdetachstate (int *,int) ;

__attribute__((used)) static void spawn_cache_cleanup_thread(SSL_CTX **_contexts, size_t num_contexts)
{

    SSL_CTX **contexts = h2o_mem_alloc(sizeof(*contexts) * (num_contexts + 1));
    h2o_memcpy(contexts, _contexts, sizeof(*contexts) * num_contexts);
    contexts[num_contexts] = ((void*)0);


    pthread_t tid;
    pthread_attr_t attr;
    pthread_attr_init(&attr);
    pthread_attr_setdetachstate(&attr, 1);
    h2o_multithread_create_thread(&tid, &attr, cache_cleanup_thread, contexts);
}
