
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int O_RDONLY ;
 int UV_RUN_DEFAULT ;
 int on_open ;
 int open_req ;
 int read_req ;
 int uv_default_loop () ;
 int uv_fs_open (int ,int *,char*,int ,int ,int ) ;
 int uv_fs_req_cleanup (int *) ;
 int uv_run (int ,int ) ;
 int write_req ;

int main(int argc, char **argv) {
    uv_fs_open(uv_default_loop(), &open_req, argv[1], O_RDONLY, 0, on_open);
    uv_run(uv_default_loop(), UV_RUN_DEFAULT);

    uv_fs_req_cleanup(&open_req);
    uv_fs_req_cleanup(&read_req);
    uv_fs_req_cleanup(&write_req);
    return 0;
}
