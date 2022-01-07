
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evrpc_request_wrapper {struct evrpc_pool* pool; } ;
struct evrpc_pool {int dummy; } ;



struct evrpc_pool *
evrpc_request_get_pool(struct evrpc_request_wrapper *ctx)
{
 return (ctx->pool);
}
