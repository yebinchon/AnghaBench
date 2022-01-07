
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xwidget_part_num_t ;
typedef int widgetreg_t ;
typedef int u64 ;
typedef int nasid_t ;
typedef int cnodeid_t ;



 int COMPACT_TO_NASID_NODEID (int ) ;
 int IIO_LLP_CSR ;
 int volatile IIO_LLP_CSR_IS_UP ;
 scalar_t__ RAW_NODE_SWIN_BASE (int ,int) ;
 int REMOTE_HUB_L (int ,int ) ;
 scalar_t__ WIDGET_ID ;

 int XWIDGET_PART_NUM (int ) ;

 int bridge_platform_create (int ,int,int) ;
 int pr_info (char*,int ,...) ;
 int xbow_probe (int ) ;

__attribute__((used)) static void xtalk_probe_node(cnodeid_t nid)
{
 volatile u64 hubreg;
 nasid_t nasid;
 xwidget_part_num_t partnum;
 widgetreg_t widget_id;

 nasid = COMPACT_TO_NASID_NODEID(nid);
 hubreg = REMOTE_HUB_L(nasid, IIO_LLP_CSR);


 if (!(hubreg & IIO_LLP_CSR_IS_UP))
  return;

 widget_id = *(volatile widgetreg_t *)
         (RAW_NODE_SWIN_BASE(nasid, 0x0) + WIDGET_ID);
 partnum = XWIDGET_PART_NUM(widget_id);

 switch (partnum) {
 case 130:
  bridge_platform_create(nasid, 0x8, 0xa);
  break;
 case 129:
 case 128:
  pr_info("xtalk:n%d/0 xbow widget\n", nasid);
  xbow_probe(nasid);
  break;
 default:
  pr_info("xtalk:n%d/0 unknown widget (0x%x)\n", nasid, partnum);
  break;
 }
}
