
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uv_stream_t ;
typedef int uv_fs_t ;


 int O_CREAT ;
 int O_RDWR ;
 int UV_RUN_DEFAULT ;
 int alloc_buffer ;
 int file_pipe ;
 int loop ;
 int read_stdin ;
 int stdin_pipe ;
 int stdout_pipe ;
 int uv_default_loop () ;
 int uv_fs_open (int ,int *,char*,int,int,int *) ;
 int uv_pipe_init (int ,int *,int ) ;
 int uv_pipe_open (int *,int) ;
 int uv_read_start (int *,int ,int ) ;
 int uv_run (int ,int ) ;

int main(int argc, char **argv) {
    loop = uv_default_loop();

    uv_pipe_init(loop, &stdin_pipe, 0);
    uv_pipe_open(&stdin_pipe, 0);

    uv_pipe_init(loop, &stdout_pipe, 0);
    uv_pipe_open(&stdout_pipe, 1);

    uv_fs_t file_req;
    int fd = uv_fs_open(loop, &file_req, argv[1], O_CREAT | O_RDWR, 0644, ((void*)0));
    uv_pipe_init(loop, &file_pipe, 0);
    uv_pipe_open(&file_pipe, fd);

    uv_read_start((uv_stream_t*)&stdin_pipe, alloc_buffer, read_stdin);

    uv_run(loop, UV_RUN_DEFAULT);
    return 0;
}
