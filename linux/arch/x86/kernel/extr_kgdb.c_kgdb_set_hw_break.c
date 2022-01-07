
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef enum kgdb_bptype { ____Placeholder_kgdb_bptype } kgdb_bptype ;
struct TYPE_2__ {int enabled; unsigned long addr; int len; int type; } ;





 int HBP_NUM ;
 int X86_BREAKPOINT_EXECUTE ;
 int X86_BREAKPOINT_LEN_1 ;
 int X86_BREAKPOINT_LEN_2 ;
 int X86_BREAKPOINT_LEN_4 ;
 int X86_BREAKPOINT_LEN_8 ;
 int X86_BREAKPOINT_RW ;
 int X86_BREAKPOINT_WRITE ;
 TYPE_1__* breakinfo ;
 scalar_t__ hw_break_reserve_slot (int) ;

__attribute__((used)) static int
kgdb_set_hw_break(unsigned long addr, int len, enum kgdb_bptype bptype)
{
 int i;

 for (i = 0; i < HBP_NUM; i++)
  if (!breakinfo[i].enabled)
   break;
 if (i == HBP_NUM)
  return -1;

 switch (bptype) {
 case 129:
  len = 1;
  breakinfo[i].type = X86_BREAKPOINT_EXECUTE;
  break;
 case 128:
  breakinfo[i].type = X86_BREAKPOINT_WRITE;
  break;
 case 130:
  breakinfo[i].type = X86_BREAKPOINT_RW;
  break;
 default:
  return -1;
 }
 switch (len) {
 case 1:
  breakinfo[i].len = X86_BREAKPOINT_LEN_1;
  break;
 case 2:
  breakinfo[i].len = X86_BREAKPOINT_LEN_2;
  break;
 case 4:
  breakinfo[i].len = X86_BREAKPOINT_LEN_4;
  break;





 default:
  return -1;
 }
 breakinfo[i].addr = addr;
 if (hw_break_reserve_slot(i)) {
  breakinfo[i].addr = 0;
  return -1;
 }
 breakinfo[i].enabled = 1;

 return 0;
}
