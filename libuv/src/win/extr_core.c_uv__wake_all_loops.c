
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ iocp; } ;
typedef TYPE_1__ uv_loop_t ;


 scalar_t__ INVALID_HANDLE_VALUE ;
 int PostQueuedCompletionStatus (scalar_t__,int ,int ,int *) ;
 int assert (TYPE_1__*) ;
 TYPE_1__** uv__loops ;
 int uv__loops_lock ;
 int uv__loops_size ;
 int uv_mutex_lock (int *) ;
 int uv_mutex_unlock (int *) ;

void uv__wake_all_loops(void) {
  int i;
  uv_loop_t* loop;

  uv_mutex_lock(&uv__loops_lock);
  for (i = 0; i < uv__loops_size; ++i) {
    loop = uv__loops[i];
    assert(loop);
    if (loop->iocp != INVALID_HANDLE_VALUE)
      PostQueuedCompletionStatus(loop->iocp, 0, 0, ((void*)0));
  }
  uv_mutex_unlock(&uv__loops_lock);
}
