
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {double percent_processing_unit_used; } ;
typedef TYPE_1__ SSTS0200 ;


 scalar_t__ get_ibmi_system_status (TYPE_1__*) ;

void uv_loadavg(double avg[3]) {
  SSTS0200 rcvr;

  if (get_ibmi_system_status(&rcvr)) {
    avg[0] = avg[1] = avg[2] = 0;
    return;
  }





  double processing_unit_used_percent =
    rcvr.percent_processing_unit_used / 1000.0;

  avg[0] = avg[1] = avg[2] = processing_unit_used_percent;
}
