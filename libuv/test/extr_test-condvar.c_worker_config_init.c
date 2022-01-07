
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int use_broadcast; int mutex; int cond; int sem_signaled; int sem_waiting; int wait_cond; int signal_cond; } ;
typedef TYPE_1__ worker_config ;
typedef int wait_func ;
typedef int signal_func ;


 int ASSERT (int) ;
 int memset (TYPE_1__*,int ,int) ;
 scalar_t__ uv_cond_init (int *) ;
 scalar_t__ uv_mutex_init (int *) ;
 scalar_t__ uv_sem_init (int *,int ) ;

void worker_config_init(worker_config* wc,
                        int use_broadcast,
                        signal_func signal_f,
                        wait_func wait_f) {

  memset(wc, 0, sizeof(*wc));


  wc->signal_cond = signal_f;
  wc->wait_cond = wait_f;
  wc->use_broadcast = use_broadcast;


  ASSERT(0 == uv_sem_init(&wc->sem_waiting, 0));
  ASSERT(0 == uv_sem_init(&wc->sem_signaled, 0));
  ASSERT(0 == uv_cond_init(&wc->cond));
  ASSERT(0 == uv_mutex_init(&wc->mutex));
}
