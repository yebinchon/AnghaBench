
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int acrs; } ;
struct TYPE_4__ {TYPE_1__ thread; } ;


 TYPE_2__* current ;
 int restore_access_regs (int ) ;

__attribute__((used)) static void load_sigregs(void)
{
 restore_access_regs(current->thread.acrs);
}
