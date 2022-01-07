
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;
struct zpci_fib {int dummy; } ;


 int ZPCI_INSN_BUSY_DELAY ;
 int __mpcifc (int ,struct zpci_fib*,int*) ;
 int msleep (int ) ;
 int zpci_err_insn (int,int,int ,int ) ;

u8 zpci_mod_fc(u64 req, struct zpci_fib *fib, u8 *status)
{
 u8 cc;

 do {
  cc = __mpcifc(req, fib, status);
  if (cc == 2)
   msleep(ZPCI_INSN_BUSY_DELAY);
 } while (cc == 2);

 if (cc)
  zpci_err_insn(cc, *status, req, 0);

 return cc;
}
