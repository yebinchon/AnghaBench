
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;


 int EIO ;
 int ENOMEM ;
 int ZPCI_INSN_BUSY_DELAY ;
 int __rpcit (int ,int ,int ,int*) ;
 int udelay (int ) ;
 int zpci_err_insn (int,int,int ,int ) ;

int zpci_refresh_trans(u64 fn, u64 addr, u64 range)
{
 u8 cc, status;

 do {
  cc = __rpcit(fn, addr, range, &status);
  if (cc == 2)
   udelay(ZPCI_INSN_BUSY_DELAY);
 } while (cc == 2);

 if (cc)
  zpci_err_insn(cc, status, addr, range);

 if (cc == 1 && (status == 4 || status == 16))
  return -ENOMEM;

 return (cc) ? -EIO : 0;
}
