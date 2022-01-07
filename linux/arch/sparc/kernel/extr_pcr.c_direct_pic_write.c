
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int WARN_ON_ONCE (int) ;

__attribute__((used)) static void direct_pic_write(unsigned long reg_num, u64 val)
{
 WARN_ON_ONCE(reg_num != 0);





 __asm__ __volatile__("ba,pt	%%xcc, 99f\n\t"
        " nop\n\t"
        ".align	64\n"
     "99:wr	%0, 0x0, %%pic\n\t"
        "rd	%%pic, %%g0" : : "r" (val));
}
