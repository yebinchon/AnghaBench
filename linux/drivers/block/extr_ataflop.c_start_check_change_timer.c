
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ CHECK_CHANGE_DELAY ;
 int fd_timer ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;

__attribute__((used)) static inline void start_check_change_timer( void )
{
 mod_timer(&fd_timer, jiffies + CHECK_CHANGE_DELAY);
}
