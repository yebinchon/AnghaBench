
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ terminated; } ;
struct TYPE_5__ {int q; TYPE_1__ Out; } ;
typedef TYPE_2__ write_thread_arg_t ;


 int delete_write_thread_query (int ) ;

int write_thread_check_completion (write_thread_arg_t *A) {
  if (A->Out.terminated) {
    delete_write_thread_query (A->q);
    return 1;
  }
  return 0;
}
