
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ creation_time; int pid; } ;
typedef TYPE_1__ transaction_t ;


 scalar_t__ get_process_creation_time (int ) ;

__attribute__((used)) static int check_is_running (transaction_t *T) {
  return T->creation_time && (T->creation_time == get_process_creation_time (T->pid));
}
