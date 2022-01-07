
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int ssize_t ;


 int AMD64_EVENTSEL_EVENT ;
 int ARCH_PERFMON_EVENTSEL_EVENT ;
 int x86_event_sysfs_show (char*,int,int) ;

__attribute__((used)) static ssize_t amd_event_sysfs_show(char *page, u64 config)
{
 u64 event = (config & ARCH_PERFMON_EVENTSEL_EVENT) |
      (config & AMD64_EVENTSEL_EVENT) >> 24;

 return x86_event_sysfs_show(page, config, event);
}
