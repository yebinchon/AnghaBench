
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int max_frm_size; } ;


 TYPE_1__ wsconfig ;

void
ws_set_config_frame_size (int max_frm_size)
{
  wsconfig.max_frm_size = max_frm_size;
}
