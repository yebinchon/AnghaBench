
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __vmclrmap (int ,int) ;

void tlb_flush_all(void)
{

 __vmclrmap(0, 0xffff0000);
}
