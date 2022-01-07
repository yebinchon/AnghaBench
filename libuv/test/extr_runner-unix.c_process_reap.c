
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int status; } ;
typedef TYPE_1__ process_info_t ;


 int WEXITSTATUS (int) ;
 scalar_t__ WIFEXITED (int) ;

int process_reap(process_info_t *p) {
  if (WIFEXITED(p->status)) {
    return WEXITSTATUS(p->status);
  } else {
    return p->status;
  }
}
