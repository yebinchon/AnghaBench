
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uv_buf_t ;


 int UV_RUN_DEFAULT ;
 int buffer ;
 int crunch_away ;
 int idler ;
 int loop ;
 int on_type ;
 int stdin_watcher ;
 int uv_buf_init (int ,int) ;
 int uv_default_loop () ;
 int uv_fs_read (int ,int *,int ,int *,int,int,int ) ;
 int uv_idle_init (int ,int *) ;
 int uv_idle_start (int *,int ) ;
 int uv_run (int ,int ) ;

int main() {
    loop = uv_default_loop();

    uv_idle_init(loop, &idler);

    uv_buf_t buf = uv_buf_init(buffer, 1024);
    uv_fs_read(loop, &stdin_watcher, 0, &buf, 1, -1, on_type);
    uv_idle_start(&idler, crunch_away);
    return uv_run(loop, UV_RUN_DEFAULT);
}
