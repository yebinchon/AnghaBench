
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cfe_xiocb {int xiocb_status; int xiocb_handle; scalar_t__ xiocb_psize; scalar_t__ xiocb_flags; int xiocb_fcode; } ;


 int CFE_CMD_DEV_CLOSE ;
 int cfe_iocb_dispatch (struct cfe_xiocb*) ;

int cfe_close(int handle)
{
 struct cfe_xiocb xiocb;

 xiocb.xiocb_fcode = CFE_CMD_DEV_CLOSE;
 xiocb.xiocb_status = 0;
 xiocb.xiocb_handle = handle;
 xiocb.xiocb_flags = 0;
 xiocb.xiocb_psize = 0;

 cfe_iocb_dispatch(&xiocb);

 return xiocb.xiocb_status;

}
