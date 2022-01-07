
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct lpc_cycle_para {size_t csize; int opflags; } ;
struct hisi_lpc_dev {int dummy; } ;


 int EINVAL ;
 int FG_INCRADDR_LPC ;
 size_t LPC_MAX_DWIDTH ;
 unsigned long hisi_lpc_pio_to_addr (struct hisi_lpc_dev*,unsigned long) ;
 int hisi_lpc_target_in (struct hisi_lpc_dev*,struct lpc_cycle_para*,unsigned long,unsigned char*,size_t) ;

__attribute__((used)) static u32 hisi_lpc_comm_ins(void *hostdata, unsigned long pio, void *buffer,
        size_t dwidth, unsigned int count)
{
 struct hisi_lpc_dev *lpcdev = hostdata;
 unsigned char *buf = buffer;
 struct lpc_cycle_para iopara;
 unsigned long addr;

 if (!lpcdev || !buf || !count || !dwidth || dwidth > LPC_MAX_DWIDTH)
  return -EINVAL;

 iopara.opflags = 0;
 if (dwidth > 1)
  iopara.opflags |= FG_INCRADDR_LPC;
 iopara.csize = dwidth;

 addr = hisi_lpc_pio_to_addr(lpcdev, pio);

 do {
  int ret;

  ret = hisi_lpc_target_in(lpcdev, &iopara, addr, buf, dwidth);
  if (ret)
   return ret;
  buf += dwidth;
 } while (--count);

 return 0;
}
