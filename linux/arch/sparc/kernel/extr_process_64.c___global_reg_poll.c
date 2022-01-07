
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct global_reg_snapshot {int thread; } ;


 int barrier () ;
 int udelay (int) ;

__attribute__((used)) static void __global_reg_poll(struct global_reg_snapshot *gp)
{
 int limit = 0;

 while (!gp->thread && ++limit < 100) {
  barrier();
  udelay(1);
 }
}
