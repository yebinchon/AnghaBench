
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int vm_flags; int vm_parm; int vm_parm_len; int flags; int loadparm; } ;
struct ipl_parameter_block {TYPE_2__ ccw; } ;
struct TYPE_5__ {int vm_flags; int * vm_parm; int vm_parm_len; } ;
struct TYPE_8__ {TYPE_1__ ccw; } ;
struct TYPE_7__ {int loadparm; scalar_t__ is_valid; } ;


 int DIAG308_VMPARM_SIZE ;
 int IPL_PB0_CCW_VM_FLAG_VP ;
 int IPL_PB0_FLAG_LOADPARM ;
 int LOADPARM_LEN ;
 scalar_t__ MACHINE_IS_VM ;
 TYPE_4__ ipl_block ;
 scalar_t__ ipl_block_valid ;
 int memcpy (int ,int *,int ) ;
 int memset (int ,int,int ) ;
 TYPE_3__ sclp_ipl_info ;

__attribute__((used)) static void reipl_block_ccw_fill_parms(struct ipl_parameter_block *ipb)
{


 if (sclp_ipl_info.is_valid)
  memcpy(ipb->ccw.loadparm, &sclp_ipl_info.loadparm, LOADPARM_LEN);
 else

  memset(ipb->ccw.loadparm, 0x40, LOADPARM_LEN);
 ipb->ccw.flags = IPL_PB0_FLAG_LOADPARM;


 if (MACHINE_IS_VM && ipl_block_valid &&
     (ipl_block.ccw.vm_flags & IPL_PB0_CCW_VM_FLAG_VP)) {

  ipb->ccw.vm_flags |= IPL_PB0_CCW_VM_FLAG_VP;
  ipb->ccw.vm_parm_len = ipl_block.ccw.vm_parm_len;
  memcpy(ipb->ccw.vm_parm,
         ipl_block.ccw.vm_parm, DIAG308_VMPARM_SIZE);
 }
}
