
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct msr {int q; } ;


 int rdmsrl_safe (int ,int *) ;

int msr_read(u32 msr, struct msr *m)
{
 int err;
 u64 val;

 err = rdmsrl_safe(msr, &val);
 if (!err)
  m->q = val;

 return err;
}
