
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int del_timer (int *) ;
 int timeout_timer ;

__attribute__((used)) static inline void stop_timeout(void)
{
 del_timer(&timeout_timer);
}
