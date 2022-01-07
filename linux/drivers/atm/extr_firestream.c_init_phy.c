
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct reginit_item {int reg; int val; } ;
struct fs_dev {int dummy; } ;


 int PHY_CLEARALL ;
 int PHY_EOF ;
 int func_enter () ;
 int func_exit () ;
 int write_phy (struct fs_dev*,int,int) ;

__attribute__((used)) static int init_phy(struct fs_dev *dev, struct reginit_item *reginit)
{
 int i;

 func_enter ();
 while (reginit->reg != PHY_EOF) {
  if (reginit->reg == PHY_CLEARALL) {

   for (i=0;i<reginit->val;i++) {
    write_phy (dev, i, 0);
   }
  } else {
   write_phy (dev, reginit->reg, reginit->val);
  }
  reginit++;
 }
 func_exit ();
 return 0;
}
