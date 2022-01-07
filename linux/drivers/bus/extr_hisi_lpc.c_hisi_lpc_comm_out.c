
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct lpc_cycle_para {size_t csize; int opflags; } ;
struct hisi_lpc_dev {int dummy; } ;


 int FG_INCRADDR_LPC ;
 size_t LPC_MAX_DWIDTH ;
 int cpu_to_le32 (int ) ;
 unsigned long hisi_lpc_pio_to_addr (struct hisi_lpc_dev*,unsigned long) ;
 int hisi_lpc_target_out (struct hisi_lpc_dev*,struct lpc_cycle_para*,unsigned long,unsigned char const*,size_t) ;

__attribute__((used)) static void hisi_lpc_comm_out(void *hostdata, unsigned long pio,
         u32 val, size_t dwidth)
{
 struct hisi_lpc_dev *lpcdev = hostdata;
 struct lpc_cycle_para iopara;
 const unsigned char *buf;
 unsigned long addr;

 if (!lpcdev || !dwidth || dwidth > LPC_MAX_DWIDTH)
  return;

 val = cpu_to_le32(val);

 buf = (const unsigned char *)&val;
 addr = hisi_lpc_pio_to_addr(lpcdev, pio);

 iopara.opflags = FG_INCRADDR_LPC;
 iopara.csize = dwidth;

 hisi_lpc_target_out(lpcdev, &iopara, addr, buf, dwidth);
}
