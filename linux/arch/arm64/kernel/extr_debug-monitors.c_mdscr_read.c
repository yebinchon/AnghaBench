
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int mdscr_el1 ;
 int read_sysreg (int ) ;

__attribute__((used)) static u32 mdscr_read(void)
{
 return read_sysreg(mdscr_el1);
}
