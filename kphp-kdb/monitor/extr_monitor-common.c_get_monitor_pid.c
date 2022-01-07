
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int monitor_pid; } ;
struct TYPE_4__ {TYPE_1__ e_hdr; } ;


 TYPE_2__* CData ;

int get_monitor_pid (void) {
  return CData ? CData->e_hdr.monitor_pid : 0;
}
