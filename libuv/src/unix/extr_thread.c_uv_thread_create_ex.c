
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uv_thread_t ;
struct TYPE_3__ {int flags; size_t stack_size; } ;
typedef TYPE_1__ uv_thread_options_t ;
typedef int pthread_attr_t ;


 size_t PTHREAD_STACK_MIN ;
 int UV_THREAD_HAS_STACK_SIZE ;
 int UV__ERR (int) ;
 int abort () ;
 scalar_t__ getpagesize () ;
 int pthread_attr_destroy (int *) ;
 scalar_t__ pthread_attr_init (int *) ;
 scalar_t__ pthread_attr_setstacksize (int *,size_t) ;
 int pthread_create (int *,int *,void* (*) (void*),void*) ;
 size_t thread_stack_size () ;

int uv_thread_create_ex(uv_thread_t* tid,
                        const uv_thread_options_t* params,
                        void (*entry)(void *arg),
                        void *arg) {
  int err;
  pthread_attr_t* attr;
  pthread_attr_t attr_storage;
  size_t pagesize;
  size_t stack_size;


  union {
    void (*in)(void*);
    void* (*out)(void*);
  } f;

  stack_size =
      params->flags & UV_THREAD_HAS_STACK_SIZE ? params->stack_size : 0;

  attr = ((void*)0);
  if (stack_size == 0) {
    stack_size = thread_stack_size();
  } else {
    pagesize = (size_t)getpagesize();

    stack_size = (stack_size + pagesize - 1) &~ (pagesize - 1);




  }

  if (stack_size > 0) {
    attr = &attr_storage;

    if (pthread_attr_init(attr))
      abort();

    if (pthread_attr_setstacksize(attr, stack_size))
      abort();
  }

  f.in = entry;
  err = pthread_create(tid, attr, f.out, arg);

  if (attr != ((void*)0))
    pthread_attr_destroy(attr);

  return UV__ERR(err);
}
