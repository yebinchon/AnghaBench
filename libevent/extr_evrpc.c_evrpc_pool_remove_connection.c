
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evrpc_pool {int connections; } ;
struct evhttp_connection {int dummy; } ;


 int TAILQ_REMOVE (int *,struct evhttp_connection*,int ) ;
 int next ;

void
evrpc_pool_remove_connection(struct evrpc_pool *pool,
    struct evhttp_connection *connection)
{
 TAILQ_REMOVE(&pool->connections, connection, next);
}
