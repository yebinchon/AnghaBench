
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * data; } ;
typedef TYPE_1__ php_worker ;


 int dl_free (TYPE_1__*,int) ;
 int php_query_data_free (int *) ;

void php_worker_free (php_worker *worker) {
  if (worker == ((void*)0)) {
    return;
  }

  php_query_data_free (worker->data);
  worker->data = ((void*)0);

  dl_free (worker, sizeof (php_worker));
}
