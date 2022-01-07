
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {int state; TYPE_1__* conn; scalar_t__ paused; } ;
typedef TYPE_2__ php_worker ;
struct TYPE_9__ {scalar_t__ status; } ;


 int assert (int) ;
 scalar_t__ conn_wait_net ;
 int php_worker_finish (TYPE_2__*) ;
 int php_worker_free_script (TYPE_2__*) ;
 int php_worker_init_script (TYPE_2__*) ;
 int php_worker_run (TYPE_2__*) ;
 int php_worker_try_start (TYPE_2__*) ;






int php_worker_main (php_worker *worker) {
  worker->paused = 0;
  do {
    switch (worker->state) {
      case 128:
        php_worker_try_start (worker);
        break;

      case 130:
        php_worker_init_script (worker);
        break;

      case 129:
        php_worker_run (worker);
        break;

      case 131:
        php_worker_free_script (worker);
        break;

      case 132:
        php_worker_finish (worker);
        return 1;
    }
  } while (!worker->paused);

  assert (worker->conn->status == conn_wait_net);
  return 0;
}
