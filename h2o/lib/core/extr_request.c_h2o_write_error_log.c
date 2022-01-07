
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int vecs ;
struct iovec {char* member_0; int member_1; } ;
struct TYPE_4__ {char* base; int len; } ;
typedef TYPE_1__ h2o_iovec_t ;


 int H2O_BUILD_ASSERT (int) ;
 int IOV_MAX ;
 int writev (int,struct iovec*,int) ;

void h2o_write_error_log(h2o_iovec_t prefix, h2o_iovec_t msg)
{

    struct iovec vecs[] = {{prefix.base, prefix.len}, {msg.base, msg.len}, {"\n", 1}};
    H2O_BUILD_ASSERT(sizeof(vecs) / sizeof(vecs[0]) <= IOV_MAX);
    writev(2, vecs, sizeof(vecs) / sizeof(vecs[0]));
}
