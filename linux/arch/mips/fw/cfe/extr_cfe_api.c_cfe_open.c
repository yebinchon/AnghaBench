
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct xiocb_buffer {int dummy; } ;
struct TYPE_3__ {int buf_length; int buf_ptr; scalar_t__ buf_offset; } ;
struct TYPE_4__ {TYPE_1__ xiocb_buffer; } ;
struct cfe_xiocb {scalar_t__ xiocb_status; int xiocb_handle; int xiocb_psize; TYPE_2__ plist; scalar_t__ xiocb_flags; int xiocb_fcode; } ;


 int CFE_CMD_DEV_OPEN ;
 int XPTR_FROM_NATIVE (char*) ;
 int cfe_iocb_dispatch (struct cfe_xiocb*) ;
 int strlen (char*) ;

int cfe_open(char *name)
{
 struct cfe_xiocb xiocb;

 xiocb.xiocb_fcode = CFE_CMD_DEV_OPEN;
 xiocb.xiocb_status = 0;
 xiocb.xiocb_handle = 0;
 xiocb.xiocb_flags = 0;
 xiocb.xiocb_psize = sizeof(struct xiocb_buffer);
 xiocb.plist.xiocb_buffer.buf_offset = 0;
 xiocb.plist.xiocb_buffer.buf_ptr = XPTR_FROM_NATIVE(name);
 xiocb.plist.xiocb_buffer.buf_length = strlen(name);

 cfe_iocb_dispatch(&xiocb);

 if (xiocb.xiocb_status < 0)
  return xiocb.xiocb_status;
 return xiocb.xiocb_handle;
}
