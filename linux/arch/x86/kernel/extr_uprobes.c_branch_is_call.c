
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int opc1; } ;
struct arch_uprobe {TYPE_1__ branch; } ;



__attribute__((used)) static bool branch_is_call(struct arch_uprobe *auprobe)
{
 return auprobe->branch.opc1 == 0xe8;
}
