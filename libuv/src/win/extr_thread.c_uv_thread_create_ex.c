
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int * uv_thread_t ;
struct TYPE_5__ {int flags; size_t stack_size; } ;
typedef TYPE_1__ uv_thread_options_t ;
struct thread_ctx {void (* entry ) (void*) ;int * self; void* arg; } ;
struct TYPE_6__ {scalar_t__ dwPageSize; } ;
typedef TYPE_2__ SYSTEM_INFO ;
typedef int * HANDLE ;


 int CREATE_SUSPENDED ;



 int GetNativeSystemInfo (TYPE_2__*) ;
 int ResumeThread (int *) ;
 int UV_EACCES ;
 int UV_EAGAIN ;
 int UV_EINVAL ;
 int UV_EIO ;
 int UV_ENOMEM ;
 int UV_THREAD_HAS_STACK_SIZE ;
 scalar_t__ _beginthreadex (int *,unsigned int,int ,struct thread_ctx*,int ,int *) ;
 int errno ;
 int uv__free (struct thread_ctx*) ;
 struct thread_ctx* uv__malloc (int) ;
 int uv__thread_start ;

int uv_thread_create_ex(uv_thread_t* tid,
                        const uv_thread_options_t* params,
                        void (*entry)(void *arg),
                        void *arg) {
  struct thread_ctx* ctx;
  int err;
  HANDLE thread;
  SYSTEM_INFO sysinfo;
  size_t stack_size;
  size_t pagesize;

  stack_size =
      params->flags & UV_THREAD_HAS_STACK_SIZE ? params->stack_size : 0;

  if (stack_size != 0) {
    GetNativeSystemInfo(&sysinfo);
    pagesize = (size_t)sysinfo.dwPageSize;

    stack_size = (stack_size + pagesize - 1) &~ (pagesize - 1);

    if ((unsigned)stack_size != stack_size)
      return UV_EINVAL;
  }

  ctx = uv__malloc(sizeof(*ctx));
  if (ctx == ((void*)0))
    return UV_ENOMEM;

  ctx->entry = entry;
  ctx->arg = arg;



  thread = (HANDLE) _beginthreadex(((void*)0),
                                   (unsigned)stack_size,
                                   uv__thread_start,
                                   ctx,
                                   CREATE_SUSPENDED,
                                   ((void*)0));
  if (thread == ((void*)0)) {
    err = errno;
    uv__free(ctx);
  } else {
    err = 0;
    *tid = thread;
    ctx->self = thread;
    ResumeThread(thread);
  }

  switch (err) {
    case 0:
      return 0;
    case 130:
      return UV_EACCES;
    case 129:
      return UV_EAGAIN;
    case 128:
      return UV_EINVAL;
  }

  return UV_EIO;
}
