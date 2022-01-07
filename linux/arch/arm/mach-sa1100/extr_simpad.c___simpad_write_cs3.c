
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CS3_BASE ;
 int cs3_shadow ;
 int writel (int ,int ) ;

__attribute__((used)) static void __simpad_write_cs3(void)
{
 writel(cs3_shadow, CS3_BASE);
}
