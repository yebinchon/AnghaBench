
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int rev; } ;
struct ucode_cpu_info {TYPE_1__ cpu_sig; } ;


 int pr_info_once (char*,int ,unsigned int,unsigned int,unsigned int) ;

__attribute__((used)) static void
print_ucode_info(struct ucode_cpu_info *uci, unsigned int date)
{
 pr_info_once("microcode updated early to revision 0x%x, date = %04x-%02x-%02x\n",
       uci->cpu_sig.rev,
       date & 0xffff,
       date >> 24,
       (date >> 16) & 0xff);
}
