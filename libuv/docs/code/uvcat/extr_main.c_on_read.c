
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ result; } ;
typedef TYPE_1__ uv_fs_t ;
struct TYPE_9__ {int result; } ;
struct TYPE_8__ {scalar_t__ len; } ;


 int fprintf (int ,char*,char*) ;
 TYPE_2__ iov ;
 int on_write ;
 TYPE_4__ open_req ;
 int stderr ;
 int uv_default_loop () ;
 int uv_fs_close (int ,TYPE_1__*,int ,int *) ;
 int uv_fs_write (int ,int *,int,TYPE_2__*,int,int,int ) ;
 char* uv_strerror (scalar_t__) ;
 int write_req ;

void on_read(uv_fs_t *req) {
    if (req->result < 0) {
        fprintf(stderr, "Read error: %s\n", uv_strerror(req->result));
    }
    else if (req->result == 0) {
        uv_fs_t close_req;

        uv_fs_close(uv_default_loop(), &close_req, open_req.result, ((void*)0));
    }
    else if (req->result > 0) {
        iov.len = req->result;
        uv_fs_write(uv_default_loop(), &write_req, 1, &iov, 1, -1, on_write);
    }
}
