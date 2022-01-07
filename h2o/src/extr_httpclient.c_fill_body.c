
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ len; } ;
typedef TYPE_1__ h2o_iovec_t ;
struct TYPE_8__ {int len; } ;


 scalar_t__ MIN (int ,scalar_t__) ;
 scalar_t__ cur_req_body_size ;
 TYPE_1__ h2o_iovec_init (int *,int ) ;
 TYPE_3__ iov_filler ;
 int memcpy (TYPE_1__*,TYPE_3__*,int) ;

int fill_body(h2o_iovec_t *reqbuf)
{
    if (cur_req_body_size > 0) {
        memcpy(reqbuf, &iov_filler, sizeof(*reqbuf));
        reqbuf->len = MIN(iov_filler.len, cur_req_body_size);
        cur_req_body_size -= reqbuf->len;
        return 0;
    } else {
        *reqbuf = h2o_iovec_init(((void*)0), 0);
        return 1;
    }
}
