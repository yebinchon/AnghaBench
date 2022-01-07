
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lanai_dev {int dummy; } ;


 int DPRINTK (char*) ;
 int Reset_Reg ;
 int reg_write (struct lanai_dev const*,int ,int ) ;
 int udelay (int) ;

__attribute__((used)) static inline void reset_board(const struct lanai_dev *lanai)
{
 DPRINTK("about to reset board\n");
 reg_write(lanai, 0, Reset_Reg);






 udelay(5);
}
