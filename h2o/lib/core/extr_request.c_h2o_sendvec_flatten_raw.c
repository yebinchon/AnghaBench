
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ len; scalar_t__ raw; } ;
typedef TYPE_1__ h2o_sendvec_t ;
typedef int h2o_req_t ;
struct TYPE_6__ {scalar_t__ len; int base; } ;
typedef TYPE_2__ h2o_iovec_t ;


 int assert (int) ;
 int memcpy (int ,scalar_t__,scalar_t__) ;

int h2o_sendvec_flatten_raw(h2o_sendvec_t *src, h2o_req_t *req, h2o_iovec_t dst, size_t off)
{
    assert(off + dst.len <= src->len);
    memcpy(dst.base, src->raw + off, dst.len);
    return 1;
}
