
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int len; int base; } ;
typedef TYPE_1__ h2o_iovec_t ;


 int H2O_STRLIT (char*) ;
 TYPE_1__ h2o_iovec_init (int ) ;
 scalar_t__ h2o_memis (int ,int ,int ) ;

h2o_iovec_t h2o_get_redirect_method(h2o_iovec_t method, int status)
{
    if (h2o_memis(method.base, method.len, H2O_STRLIT("POST")) && !(status == 307 || status == 308))
        method = h2o_iovec_init(H2O_STRLIT("GET"));
    return method;
}
