
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct arch_hw_breakpoint {int type; int len; int address; } ;
struct TYPE_4__ {int enabled; int address; } ;
struct TYPE_3__ {int address; } ;


 int HW_BRK_TYPE_DABR ;
 int HW_BRK_TYPE_PRIV_ALL ;
 int __set_breakpoint (struct arch_hw_breakpoint*) ;
 TYPE_2__ dabr ;
 TYPE_1__* iabr ;
 int set_ciabr (int ) ;

__attribute__((used)) static void insert_cpu_bpts(void)
{
 struct arch_hw_breakpoint brk;

 if (dabr.enabled) {
  brk.address = dabr.address;
  brk.type = (dabr.enabled & HW_BRK_TYPE_DABR) | HW_BRK_TYPE_PRIV_ALL;
  brk.len = 8;
  __set_breakpoint(&brk);
 }

 if (iabr)
  set_ciabr(iabr->address);
}
