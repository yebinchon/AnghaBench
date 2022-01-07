
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ time64_t ;
struct timespec64 {scalar_t__ tv_sec; } ;


 int SET_TIME_CMD ;
 int rtc_end_op () ;
 int rtc_init_op () ;
 int rtc_lock ;
 int rtc_write_byte (int ) ;
 int rtc_write_word (unsigned long) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int update_persistent_clock64(struct timespec64 now)
{
 time64_t time = now.tv_sec;
 unsigned long flags;

 spin_lock_irqsave(&rtc_lock, flags);
 rtc_init_op();
 rtc_write_byte(SET_TIME_CMD);




 rtc_write_word((unsigned long)time);
 rtc_end_op();
 spin_unlock_irqrestore(&rtc_lock, flags);

 return 0;
}
