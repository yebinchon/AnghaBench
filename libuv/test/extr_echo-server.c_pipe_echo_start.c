
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uv_stream_t ;
typedef int uv_handle_t ;
typedef int uv_fs_t ;


 int PIPE ;
 int SOMAXCONN ;
 int fprintf (int ,char*,char*) ;
 int loop ;
 int on_connection ;
 int pipeServer ;
 int * server ;
 int serverType ;
 int stderr ;
 int uv_fs_req_cleanup (int *) ;
 int uv_fs_unlink (int *,int *,char*,int *) ;
 int uv_listen (int *,int ,int ) ;
 int uv_pipe_bind (int *,char*) ;
 int uv_pipe_init (int ,int *,int ) ;
 char* uv_strerror (int) ;

__attribute__((used)) static int pipe_echo_start(char* pipeName) {
  int r;


  {
    uv_fs_t req;
    uv_fs_unlink(((void*)0), &req, pipeName, ((void*)0));
    uv_fs_req_cleanup(&req);
  }


  server = (uv_handle_t*)&pipeServer;
  serverType = PIPE;

  r = uv_pipe_init(loop, &pipeServer, 0);
  if (r) {
    fprintf(stderr, "uv_pipe_init: %s\n", uv_strerror(r));
    return 1;
  }

  r = uv_pipe_bind(&pipeServer, pipeName);
  if (r) {
    fprintf(stderr, "uv_pipe_bind: %s\n", uv_strerror(r));
    return 1;
  }

  r = uv_listen((uv_stream_t*)&pipeServer, SOMAXCONN, on_connection);
  if (r) {
    fprintf(stderr, "uv_pipe_listen: %s\n", uv_strerror(r));
    return 1;
  }

  return 0;
}
