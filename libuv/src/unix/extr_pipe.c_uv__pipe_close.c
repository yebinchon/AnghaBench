
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uv_stream_t ;
struct TYPE_3__ {int * pipe_fname; } ;
typedef TYPE_1__ uv_pipe_t ;


 int unlink (int *) ;
 int uv__free (void*) ;
 int uv__stream_close (int *) ;

void uv__pipe_close(uv_pipe_t* handle) {
  if (handle->pipe_fname) {






    unlink(handle->pipe_fname);
    uv__free((void*)handle->pipe_fname);
    handle->pipe_fname = ((void*)0);
  }

  uv__stream_close((uv_stream_t*)handle);
}
