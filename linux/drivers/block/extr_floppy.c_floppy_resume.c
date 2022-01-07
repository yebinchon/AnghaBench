
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device {int dummy; } ;
struct TYPE_2__ {int address; } ;


 TYPE_1__* FDCS ;
 int FD_RESET_ALWAYS ;
 int N_FDC ;
 int user_reset_fdc (int,int ,int) ;

__attribute__((used)) static int floppy_resume(struct device *dev)
{
 int fdc;

 for (fdc = 0; fdc < N_FDC; fdc++)
  if (FDCS->address != -1)
   user_reset_fdc(-1, FD_RESET_ALWAYS, 0);

 return 0;
}
