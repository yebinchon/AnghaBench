
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uv_loop_t ;
struct TYPE_3__ {int bind_host; } ;
struct addrinfo {int * servers; int getaddrinfo_req; int ai_protocol; int ai_socktype; int ai_family; int * loop; TYPE_1__ config; } ;
typedef int state ;
typedef struct addrinfo server_state ;
typedef TYPE_1__ server_config ;
typedef int hints ;


 int AF_UNSPEC ;
 int IPPROTO_TCP ;
 int SOCK_STREAM ;
 int UV_RUN_DEFAULT ;
 int abort () ;
 int do_bind ;
 int free (int *) ;
 int memset (struct addrinfo*,int ,int) ;
 int pr_err (char*,int ) ;
 int uv_getaddrinfo (int *,int *,int ,int ,int *,struct addrinfo*) ;
 int uv_loop_delete (int *) ;
 scalar_t__ uv_run (int *,int ) ;
 int uv_strerror (int) ;

int server_run(const server_config *cf, uv_loop_t *loop) {
  struct addrinfo hints;
  server_state state;
  int err;

  memset(&state, 0, sizeof(state));
  state.servers = ((void*)0);
  state.config = *cf;
  state.loop = loop;




  memset(&hints, 0, sizeof(hints));
  hints.ai_family = AF_UNSPEC;
  hints.ai_socktype = SOCK_STREAM;
  hints.ai_protocol = IPPROTO_TCP;

  err = uv_getaddrinfo(loop,
                       &state.getaddrinfo_req,
                       do_bind,
                       cf->bind_host,
                       ((void*)0),
                       &hints);
  if (err != 0) {
    pr_err("getaddrinfo: %s", uv_strerror(err));
    return err;
  }


  if (uv_run(loop, UV_RUN_DEFAULT)) {
    abort();
  }


  uv_loop_delete(loop);
  free(state.servers);
  return 0;
}
