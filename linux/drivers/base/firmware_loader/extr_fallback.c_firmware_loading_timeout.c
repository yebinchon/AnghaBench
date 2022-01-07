
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 long HZ ;
 long MAX_JIFFY_OFFSET ;
 long __firmware_loading_timeout () ;

__attribute__((used)) static long firmware_loading_timeout(void)
{
 return __firmware_loading_timeout() > 0 ?
  __firmware_loading_timeout() * HZ : MAX_JIFFY_OFFSET;
}
