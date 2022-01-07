
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct xiocb_inpstat {int dummy; } ;
struct TYPE_3__ {int inp_status; } ;
struct TYPE_4__ {TYPE_1__ xiocb_inpstat; } ;
struct cfe_xiocb {scalar_t__ xiocb_status; int xiocb_handle; int xiocb_psize; TYPE_2__ plist; scalar_t__ xiocb_flags; int xiocb_fcode; } ;


 int CFE_CMD_DEV_INPSTAT ;
 int cfe_iocb_dispatch (struct cfe_xiocb*) ;

int cfe_inpstat(int handle)
{
 struct cfe_xiocb xiocb;

 xiocb.xiocb_fcode = CFE_CMD_DEV_INPSTAT;
 xiocb.xiocb_status = 0;
 xiocb.xiocb_handle = handle;
 xiocb.xiocb_flags = 0;
 xiocb.xiocb_psize = sizeof(struct xiocb_inpstat);
 xiocb.plist.xiocb_inpstat.inp_status = 0;

 cfe_iocb_dispatch(&xiocb);

 if (xiocb.xiocb_status < 0)
  return xiocb.xiocb_status;
 return xiocb.plist.xiocb_inpstat.inp_status;
}
