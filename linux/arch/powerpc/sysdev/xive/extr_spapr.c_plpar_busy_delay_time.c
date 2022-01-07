
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 long H_BUSY ;
 scalar_t__ H_IS_LONG_BUSY (long) ;
 unsigned int get_longbusy_msecs (long) ;

__attribute__((used)) static unsigned int plpar_busy_delay_time(long rc)
{
 unsigned int ms = 0;

 if (H_IS_LONG_BUSY(rc)) {
  ms = get_longbusy_msecs(rc);
 } else if (rc == H_BUSY) {
  ms = 10;
 }

 return ms;
}
