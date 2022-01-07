
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pd_unit {int dummy; } ;


 int ERR_TMO ;
 int PD_SPIN ;
 int PD_SPIN_DEL ;
 int STAT_BUSY ;
 int STAT_ERR ;
 int pd_print_error (struct pd_unit*,char*,int) ;
 int read_reg (struct pd_unit*,int) ;
 int status_reg (struct pd_unit*) ;
 int udelay (int ) ;

__attribute__((used)) static int pd_wait_for(struct pd_unit *disk, int w, char *msg)
{
 int k, r, e;

 k = 0;
 while (k < PD_SPIN) {
  r = status_reg(disk);
  k++;
  if (((r & w) == w) && !(r & STAT_BUSY))
   break;
  udelay(PD_SPIN_DEL);
 }
 e = (read_reg(disk, 1) << 8) + read_reg(disk, 7);
 if (k >= PD_SPIN)
  e |= ERR_TMO;
 if ((e & (STAT_ERR | ERR_TMO)) && (msg != ((void*)0)))
  pd_print_error(disk, msg, e);
 return e;
}
