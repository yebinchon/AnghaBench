
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct xiocb_fwinfo {int dummy; } ;
struct TYPE_5__ {int fwi_reserved3; int fwi_reserved2; int fwi_reserved1; int fwi_bootarea_size; int fwi_bootarea_pa; int fwi_bootarea_va; int fwi_boardid; int fwi_flags; int fwi_totalmem; int fwi_version; } ;
struct TYPE_6__ {TYPE_1__ xiocb_fwinfo; } ;
struct cfe_xiocb {scalar_t__ xiocb_status; int xiocb_psize; TYPE_2__ plist; scalar_t__ xiocb_flags; scalar_t__ xiocb_handle; int xiocb_fcode; } ;
struct TYPE_7__ {int fwi_reserved3; int fwi_reserved2; int fwi_reserved1; int fwi_bootarea_size; int fwi_bootarea_pa; int fwi_bootarea_va; int fwi_boardid; int fwi_flags; int fwi_totalmem; int fwi_version; } ;
typedef TYPE_3__ cfe_fwinfo_t ;


 int CFE_CMD_FW_GETINFO ;
 int cfe_iocb_dispatch (struct cfe_xiocb*) ;

int cfe_getfwinfo(cfe_fwinfo_t * info)
{
 struct cfe_xiocb xiocb;

 xiocb.xiocb_fcode = CFE_CMD_FW_GETINFO;
 xiocb.xiocb_status = 0;
 xiocb.xiocb_handle = 0;
 xiocb.xiocb_flags = 0;
 xiocb.xiocb_psize = sizeof(struct xiocb_fwinfo);

 cfe_iocb_dispatch(&xiocb);

 if (xiocb.xiocb_status < 0)
  return xiocb.xiocb_status;

 info->fwi_version = xiocb.plist.xiocb_fwinfo.fwi_version;
 info->fwi_totalmem = xiocb.plist.xiocb_fwinfo.fwi_totalmem;
 info->fwi_flags = xiocb.plist.xiocb_fwinfo.fwi_flags;
 info->fwi_boardid = xiocb.plist.xiocb_fwinfo.fwi_boardid;
 info->fwi_bootarea_va = xiocb.plist.xiocb_fwinfo.fwi_bootarea_va;
 info->fwi_bootarea_pa = xiocb.plist.xiocb_fwinfo.fwi_bootarea_pa;
 info->fwi_bootarea_size =
     xiocb.plist.xiocb_fwinfo.fwi_bootarea_size;






 return 0;
}
