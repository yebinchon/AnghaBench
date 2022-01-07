
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int dummy; } ;


 int die (char*,struct pt_regs*,int) ;
 int printk (char*,int,int) ;

void unhandled_exception(struct pt_regs *regs, int ea, int vector)
{
 printk("Unable to handle exception at EA =0x%x, vector 0x%x",
        ea, vector);
 die("Oops", regs, 9);
}
