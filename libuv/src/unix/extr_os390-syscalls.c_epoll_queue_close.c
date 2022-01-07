
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int msg_queue; int * items; int member; } ;
typedef TYPE_1__ uv__os390_epoll ;


 int IPC_RMID ;
 int QUEUE_REMOVE (int *) ;
 int global_epoll_lock ;
 int msgctl (int,int ,int *) ;
 int uv__free (int *) ;
 int uv_mutex_lock (int *) ;
 int uv_mutex_unlock (int *) ;

void epoll_queue_close(uv__os390_epoll* lst) {

  uv_mutex_lock(&global_epoll_lock);
  QUEUE_REMOVE(&lst->member);
  uv_mutex_unlock(&global_epoll_lock);


  msgctl(lst->msg_queue, IPC_RMID, ((void*)0));
  lst->msg_queue = -1;
  uv__free(lst->items);
  lst->items = ((void*)0);
}
