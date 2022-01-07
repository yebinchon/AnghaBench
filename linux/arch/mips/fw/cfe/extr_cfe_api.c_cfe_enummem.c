
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct xiocb_meminfo {int dummy; } ;
struct TYPE_3__ {int mi_idx; int mi_type; int mi_size; int mi_addr; } ;
struct TYPE_4__ {TYPE_1__ xiocb_meminfo; } ;
struct cfe_xiocb {scalar_t__ xiocb_status; int xiocb_flags; int xiocb_psize; TYPE_2__ plist; scalar_t__ xiocb_handle; int xiocb_fcode; } ;


 int CFE_CMD_FW_MEMENUM ;
 int cfe_iocb_dispatch (struct cfe_xiocb*) ;

int
cfe_enummem(int idx, int flags, u64 *start, u64 *length, u64 *type)
{
 struct cfe_xiocb xiocb;

 xiocb.xiocb_fcode = CFE_CMD_FW_MEMENUM;
 xiocb.xiocb_status = 0;
 xiocb.xiocb_handle = 0;
 xiocb.xiocb_flags = flags;
 xiocb.xiocb_psize = sizeof(struct xiocb_meminfo);
 xiocb.plist.xiocb_meminfo.mi_idx = idx;

 cfe_iocb_dispatch(&xiocb);

 if (xiocb.xiocb_status < 0)
  return xiocb.xiocb_status;

 *start = xiocb.plist.xiocb_meminfo.mi_addr;
 *length = xiocb.plist.xiocb_meminfo.mi_size;
 *type = xiocb.plist.xiocb_meminfo.mi_type;

 return 0;
}
