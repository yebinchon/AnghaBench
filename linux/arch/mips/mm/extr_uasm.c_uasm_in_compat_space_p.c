
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
int uasm_in_compat_space_p(long addr)
{

 return addr == (int)addr;
}
