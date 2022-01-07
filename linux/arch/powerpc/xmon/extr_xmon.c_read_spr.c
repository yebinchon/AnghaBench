
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int bus_error_jmp ;
 int catch_spr_faults ;
 scalar_t__ setjmp (int ) ;
 int sync () ;
 unsigned long xmon_mfspr (int,unsigned long) ;

__attribute__((used)) static int
read_spr(int n, unsigned long *vp)
{
 unsigned long ret = -1UL;
 int ok = 0;

 if (setjmp(bus_error_jmp) == 0) {
  catch_spr_faults = 1;
  sync();

  ret = xmon_mfspr(n, *vp);

  sync();
  *vp = ret;
  ok = 1;
 }
 catch_spr_faults = 0;

 return ok;
}
