
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct st_h2o_http3client_req_t {int sendbuf; } ;
struct TYPE_3__ {size_t len; int * base; } ;
typedef TYPE_1__ h2o_iovec_t ;


 int H2O_HTTP3_FRAME_TYPE_DATA ;
 int h2o_buffer_append (int *,int *,size_t) ;
 int * quicly_encodev (int *,size_t) ;

__attribute__((used)) static size_t emit_data(struct st_h2o_http3client_req_t *req, h2o_iovec_t payload)
{
    size_t nbytes;

    {
        uint8_t buf[9], *p = buf;
        *p++ = H2O_HTTP3_FRAME_TYPE_DATA;
        p = quicly_encodev(p, payload.len);
        nbytes = p - buf;
        h2o_buffer_append(&req->sendbuf, buf, nbytes);
    }


    h2o_buffer_append(&req->sendbuf, payload.base, payload.len);
    nbytes += payload.len;

    return nbytes;
}
