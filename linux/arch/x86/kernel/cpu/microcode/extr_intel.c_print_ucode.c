
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ucode_cpu_info {struct microcode_intel* mc; } ;
struct TYPE_2__ {int date; } ;
struct microcode_intel {TYPE_1__ hdr; } ;


 int print_ucode_info (struct ucode_cpu_info*,int ) ;

__attribute__((used)) static inline void print_ucode(struct ucode_cpu_info *uci)
{
 struct microcode_intel *mc;

 mc = uci->mc;
 if (!mc)
  return;

 print_ucode_info(uci, mc->hdr.date);
}
