
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* cpu_suspend ) (int ,int ) ;} ;


 int HIGHBANK_SUSPEND_PARAM ;
 int __pa (int ) ;
 int cpu_resume ;
 TYPE_1__ psci_ops ;
 int stub1 (int ,int ) ;

__attribute__((used)) static int highbank_suspend_finish(unsigned long val)
{
 return psci_ops.cpu_suspend(HIGHBANK_SUSPEND_PARAM, __pa(cpu_resume));
}
