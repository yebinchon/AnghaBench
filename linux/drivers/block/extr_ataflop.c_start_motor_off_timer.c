
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ FD_MOTOR_OFF_DELAY ;
 scalar_t__ MotorOffTrys ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 int motor_off_timer ;

__attribute__((used)) static inline void start_motor_off_timer(void)
{
 mod_timer(&motor_off_timer, jiffies + FD_MOTOR_OFF_DELAY);
 MotorOffTrys = 0;
}
