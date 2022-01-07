
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mid_pwr {int dummy; } ;


 int EBUSY ;
 int mid_pwr_is_busy (struct mid_pwr*) ;
 int udelay (int) ;

__attribute__((used)) static int mid_pwr_wait(struct mid_pwr *pwr)
{
 unsigned int count = 500000;
 bool busy;

 do {
  busy = mid_pwr_is_busy(pwr);
  if (!busy)
   return 0;
  udelay(1);
 } while (--count);

 return -EBUSY;
}
