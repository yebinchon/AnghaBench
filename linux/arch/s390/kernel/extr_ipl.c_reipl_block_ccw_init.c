
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int pbt; int len; } ;
struct TYPE_3__ {int version; int len; } ;
struct ipl_parameter_block {TYPE_2__ pb0_hdr; TYPE_1__ hdr; } ;


 int IPL_BP0_CCW_LEN ;
 int IPL_BP_CCW_LEN ;
 int IPL_PARM_BLOCK_VERSION ;
 int IPL_PBT_CCW ;

__attribute__((used)) static void reipl_block_ccw_init(struct ipl_parameter_block *ipb)
{
 ipb->hdr.len = IPL_BP_CCW_LEN;
 ipb->hdr.version = IPL_PARM_BLOCK_VERSION;
 ipb->pb0_hdr.len = IPL_BP0_CCW_LEN;
 ipb->pb0_hdr.pbt = IPL_PBT_CCW;
}
