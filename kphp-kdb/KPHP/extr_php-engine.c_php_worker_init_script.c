
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int script_t ;
struct TYPE_4__ {double finish_time; double start_time; int state; int data; int req_id; scalar_t__ terminate_flag; } ;
typedef TYPE_1__ php_worker ;
struct TYPE_5__ {int is_running; scalar_t__ is_wait_net; } ;


 int dl_assert (int ,char*) ;
 int * get_script (char*) ;
 int get_utime_monotonic () ;
 TYPE_3__ immediate_stats ;
 scalar_t__ max_memory ;
 int * php_script ;
 int * php_script_create (size_t,size_t) ;
 int php_script_init (int *,int *,int ) ;
 int php_script_set_timeout (double) ;
 int phpq_finish ;
 int phpq_run ;
 double precise_now ;
 int qmem_init () ;
 int qresults_clean () ;
 int vkprintf (int,char*,int ) ;

void php_worker_init_script (php_worker *worker) {
  double timeout = worker->finish_time - precise_now - 0.01;
  if (worker->terminate_flag || timeout < 0.2) {
    worker->state = phpq_finish;
    return;
  }





  get_utime_monotonic();
  worker->start_time = precise_now;
  vkprintf (1, "START php script [req_id = %016llx]\n", worker->req_id);
  immediate_stats.is_running = 1;
  immediate_stats.is_wait_net = 0;


  qmem_init();
  qresults_clean();

  script_t *script = get_script ("#0");
  dl_assert (script != ((void*)0), "failed to get script");
  if (php_script == ((void*)0)) {
    php_script = php_script_create ((size_t)max_memory, (size_t)(8 << 20));
  }
  php_script_init (php_script, script, worker->data);
  php_script_set_timeout (timeout);
  worker->state = phpq_run;
}
