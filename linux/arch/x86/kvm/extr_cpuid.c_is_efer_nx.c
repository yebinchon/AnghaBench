
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long long EFER_NX ;
 int MSR_EFER ;
 int rdmsrl_safe (int ,unsigned long long*) ;

__attribute__((used)) static int is_efer_nx(void)
{
 unsigned long long efer = 0;

 rdmsrl_safe(MSR_EFER, &efer);
 return efer & EFER_NX;
}
