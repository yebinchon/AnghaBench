
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;


 int EIO ;
 int ZPCI_INSN_BUSY_DELAY ;
 int __pcistb (int const*,int ,int ,int *) ;
 int udelay (int ) ;
 int zpci_err_insn (int,int ,int ,int ) ;

int __zpci_store_block(const u64 *data, u64 req, u64 offset)
{
 u8 status;
 int cc;

 do {
  cc = __pcistb(data, req, offset, &status);
  if (cc == 2)
   udelay(ZPCI_INSN_BUSY_DELAY);
 } while (cc == 2);

 if (cc)
  zpci_err_insn(cc, status, req, offset);

 return (cc > 0) ? -EIO : cc;
}
