
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int h2o_redis_client_t ;


 int h2o_redis_free (int *) ;

__attribute__((used)) static void dispose_redis_connection(void *client)
{
    h2o_redis_free((h2o_redis_client_t *)client);
}
