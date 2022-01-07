
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int base; } ;
struct TYPE_6__ {TYPE_4__ buf; } ;
typedef TYPE_1__ write_req_t ;
typedef int uv_write_t ;
typedef int uv_write_cb ;
typedef int uv_stream_t ;
struct TYPE_7__ {int base; } ;
typedef TYPE_2__ uv_buf_t ;


 scalar_t__ malloc (size_t) ;
 int memcpy (int ,int ,size_t) ;
 TYPE_4__ uv_buf_init (char*,size_t) ;
 int uv_write (int *,int *,TYPE_4__*,int,int ) ;

void write_data(uv_stream_t *dest, size_t size, uv_buf_t buf, uv_write_cb cb) {
    write_req_t *req = (write_req_t*) malloc(sizeof(write_req_t));
    req->buf = uv_buf_init((char*) malloc(size), size);
    memcpy(req->buf.base, buf.base, size);
    uv_write((uv_write_t*) req, (uv_stream_t*)dest, &req->buf, 1, cb);
}
