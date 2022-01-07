
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct msr {int q; } ;


 int wrmsrl_safe (int ,int ) ;

int msr_write(u32 msr, struct msr *m)
{
 return wrmsrl_safe(msr, m->q);
}
