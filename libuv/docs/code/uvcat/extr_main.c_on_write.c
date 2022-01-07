
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ result; } ;
typedef TYPE_1__ uv_fs_t ;
struct TYPE_5__ {int result; } ;


 int fprintf (int ,char*,char*) ;
 int iov ;
 int on_read ;
 TYPE_2__ open_req ;
 int read_req ;
 int stderr ;
 int uv_default_loop () ;
 int uv_fs_read (int ,int *,int ,int *,int,int,int ) ;
 char* uv_strerror (int) ;

void on_write(uv_fs_t *req) {
    if (req->result < 0) {
        fprintf(stderr, "Write error: %s\n", uv_strerror((int)req->result));
    }
    else {
        uv_fs_read(uv_default_loop(), &read_req, open_req.result, &iov, 1, -1, on_read);
    }
}
