
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int stdio_in; int process; } ;
typedef TYPE_1__ process_info_t ;


 int CloseHandle (int ) ;

void process_cleanup(process_info_t *p) {
  CloseHandle(p->process);
  CloseHandle(p->stdio_in);
}
