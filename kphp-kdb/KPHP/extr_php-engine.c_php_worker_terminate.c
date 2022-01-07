
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int terminate_flag; char const* error_message; int * conn; } ;
typedef TYPE_1__ php_worker ;


 int vkprintf (int ,char*) ;

void php_worker_terminate (php_worker *worker, int flag, const char *error_message) {
  worker->terminate_flag = 1;
  worker->error_message = error_message;
  if (flag) {
    vkprintf (0, "php_worker_terminate\n");
    worker->conn = ((void*)0);
  }
}
