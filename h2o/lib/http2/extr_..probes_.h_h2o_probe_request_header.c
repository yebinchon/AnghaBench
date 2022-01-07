
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_6__ {int conn; } ;
typedef TYPE_1__ h2o_req_t ;
struct TYPE_7__ {int len; int base; } ;
typedef TYPE_2__ h2o_iovec_t ;


 int H2O_PROBE_CONN (int ,int ,int ,int ,int ,int ,int ) ;
 int RECEIVE_REQUEST_HEADER ;

__attribute__((used)) __attribute__((noinline)) static void h2o_probe_request_header(h2o_req_t *req, uint64_t req_index, h2o_iovec_t name,
                                                               h2o_iovec_t value)
{
    H2O_PROBE_CONN(RECEIVE_REQUEST_HEADER, req->conn, req_index, name.base, name.len, value.base, value.len);
}
