
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int uv_tcp_t ;
struct TYPE_7__ {struct TYPE_7__* data; } ;
typedef TYPE_1__ uv_stream_t ;
typedef int uv_pipe_t ;


 int ASSERT (int) ;


 int abort () ;
 int after_read ;
 int echo_alloc ;
 int fprintf (int ,char*,char*) ;
 int loop ;
 TYPE_1__* malloc (int) ;
 int serverType ;
 int stderr ;
 int uv_accept (TYPE_1__*,TYPE_1__*) ;
 char* uv_err_name (int) ;
 int uv_pipe_init (int ,int *,int ) ;
 int uv_read_start (TYPE_1__*,int ,int ) ;
 int uv_tcp_init (int ,int *) ;

__attribute__((used)) static void on_connection(uv_stream_t* server, int status) {
  uv_stream_t* stream;
  int r;

  if (status != 0) {
    fprintf(stderr, "Connect error %s\n", uv_err_name(status));
  }
  ASSERT(status == 0);

  switch (serverType) {
  case 128:
    stream = malloc(sizeof(uv_tcp_t));
    ASSERT(stream != ((void*)0));
    r = uv_tcp_init(loop, (uv_tcp_t*)stream);
    ASSERT(r == 0);
    break;

  case 129:
    stream = malloc(sizeof(uv_pipe_t));
    ASSERT(stream != ((void*)0));
    r = uv_pipe_init(loop, (uv_pipe_t*)stream, 0);
    ASSERT(r == 0);
    break;

  default:
    ASSERT(0 && "Bad serverType");
    abort();
  }


  stream->data = server;

  r = uv_accept(server, stream);
  ASSERT(r == 0);

  r = uv_read_start(stream, echo_alloc, after_read);
  ASSERT(r == 0);
}
