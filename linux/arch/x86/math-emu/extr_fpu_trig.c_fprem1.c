
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
typedef int FPU_REG ;


 int RC_RND ;
 int do_fprem (int *,int ,int ) ;

__attribute__((used)) static void fprem1(FPU_REG *st0_ptr, u_char st0_tag)
{
 do_fprem(st0_ptr, st0_tag, RC_RND);
}
