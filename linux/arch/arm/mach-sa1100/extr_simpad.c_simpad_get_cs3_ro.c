
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CS3_BASE ;
 long readl (int ) ;

long simpad_get_cs3_ro(void)
{
 return readl(CS3_BASE);
}
