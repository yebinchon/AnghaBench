
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int dtlk_port_lpc ;
 int inb_p (int ) ;
 int jiffies ;
 int printk (char*,int,int ) ;

__attribute__((used)) static int dtlk_readable(void)
{



 return inb_p(dtlk_port_lpc) != 0x7f;
}
