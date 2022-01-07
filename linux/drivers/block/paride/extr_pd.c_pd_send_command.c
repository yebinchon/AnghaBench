
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pd_unit {int dummy; } ;


 int DRIVE (struct pd_unit*) ;
 int udelay (int) ;
 int write_reg (struct pd_unit*,int,int) ;

__attribute__((used)) static void pd_send_command(struct pd_unit *disk, int n, int s, int h, int c0, int c1, int func)
{
 write_reg(disk, 6, DRIVE(disk) + h);
 write_reg(disk, 1, 0);
 write_reg(disk, 2, n);
 write_reg(disk, 3, s);
 write_reg(disk, 4, c0);
 write_reg(disk, 5, c1);
 write_reg(disk, 7, func);

 udelay(1);
}
