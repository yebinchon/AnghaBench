
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int result; } ;
typedef TYPE_1__ uv_fs_t ;
typedef int uv_buf_t ;
struct TYPE_7__ {size_t result; } ;


 char* buffer ;
 int crunch_away ;
 int fprintf (int ,char*,char*) ;
 int idler ;
 int loop ;
 int printf (char*,char*) ;
 int stderr ;
 TYPE_2__ stdin_watcher ;
 int uv_buf_init (char*,int) ;
 int uv_fs_read (int ,TYPE_2__*,int ,int *,int,int,void (*) (TYPE_1__*)) ;
 int uv_idle_start (int *,int ) ;
 char* uv_strerror (int ) ;

void on_type(uv_fs_t *req) {
    if (stdin_watcher.result > 0) {
        buffer[stdin_watcher.result] = '\0';
        printf("Typed %s\n", buffer);

        uv_buf_t buf = uv_buf_init(buffer, 1024);
        uv_fs_read(loop, &stdin_watcher, 0, &buf, 1, -1, on_type);
        uv_idle_start(&idler, crunch_away);
    }
    else if (stdin_watcher.result < 0) {
        fprintf(stderr, "error opening file: %s\n", uv_strerror(req->result));
    }
}
