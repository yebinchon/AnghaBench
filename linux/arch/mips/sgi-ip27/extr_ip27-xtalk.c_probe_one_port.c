
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xwidget_part_num_t ;
typedef int widgetreg_t ;
typedef int nasid_t ;



 scalar_t__ RAW_NODE_SWIN_BASE (int ,int) ;
 scalar_t__ WIDGET_ID ;

 int XWIDGET_PART_NUM (int ) ;
 int bridge_platform_create (int ,int,int) ;

__attribute__((used)) static int probe_one_port(nasid_t nasid, int widget, int masterwid)
{
 widgetreg_t widget_id;
 xwidget_part_num_t partnum;

 widget_id = *(volatile widgetreg_t *)
  (RAW_NODE_SWIN_BASE(nasid, widget) + WIDGET_ID);
 partnum = XWIDGET_PART_NUM(widget_id);

 switch (partnum) {
 case 129:
 case 128:
  bridge_platform_create(nasid, widget, masterwid);
  break;
 default:
  break;
 }

 return 0;
}
