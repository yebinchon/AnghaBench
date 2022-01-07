
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned long sas_ss_sp; unsigned long sas_ss_size; } ;


 TYPE_1__* current ;

__attribute__((used)) static inline int
rbs_on_sig_stack (unsigned long bsp)
{
 return (bsp - current->sas_ss_sp < current->sas_ss_size);
}
