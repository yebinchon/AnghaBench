
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SSL_CTX ;


 int setup_cache_enable (int **,size_t,int ) ;

__attribute__((used)) static void setup_cache_internal(SSL_CTX **contexts, size_t num_contexts)
{
    setup_cache_enable(contexts, num_contexts, 0);
}
