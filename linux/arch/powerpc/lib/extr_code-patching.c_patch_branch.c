
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int create_branch (unsigned int*,unsigned long,int) ;
 int patch_instruction (unsigned int*,int ) ;

int patch_branch(unsigned int *addr, unsigned long target, int flags)
{
 return patch_instruction(addr, create_branch(addr, target, flags));
}
