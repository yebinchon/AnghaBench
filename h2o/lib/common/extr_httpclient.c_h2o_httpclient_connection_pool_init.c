
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int h2o_socketpool_t ;
struct TYPE_4__ {int conns; } ;
struct TYPE_5__ {TYPE_1__ http2; int * socketpool; } ;
typedef TYPE_2__ h2o_httpclient_connection_pool_t ;


 int h2o_linklist_init_anchor (int *) ;

void h2o_httpclient_connection_pool_init(h2o_httpclient_connection_pool_t *connpool, h2o_socketpool_t *sockpool)
{
    connpool->socketpool = sockpool;
    h2o_linklist_init_anchor(&connpool->http2.conns);
}
