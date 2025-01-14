
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int ssize_t ;


 int ARCH_PERFMON_EVENTSEL_ANY ;
 int ARCH_PERFMON_EVENTSEL_CMASK ;
 int ARCH_PERFMON_EVENTSEL_EDGE ;
 int ARCH_PERFMON_EVENTSEL_INV ;
 int ARCH_PERFMON_EVENTSEL_PIN_CONTROL ;
 int ARCH_PERFMON_EVENTSEL_UMASK ;
 int sprintf (char*,char*,...) ;

ssize_t x86_event_sysfs_show(char *page, u64 config, u64 event)
{
 u64 umask = (config & ARCH_PERFMON_EVENTSEL_UMASK) >> 8;
 u64 cmask = (config & ARCH_PERFMON_EVENTSEL_CMASK) >> 24;
 bool edge = (config & ARCH_PERFMON_EVENTSEL_EDGE);
 bool pc = (config & ARCH_PERFMON_EVENTSEL_PIN_CONTROL);
 bool any = (config & ARCH_PERFMON_EVENTSEL_ANY);
 bool inv = (config & ARCH_PERFMON_EVENTSEL_INV);
 ssize_t ret;





 ret = sprintf(page, "event=0x%02llx", event);

 if (umask)
  ret += sprintf(page + ret, ",umask=0x%02llx", umask);

 if (edge)
  ret += sprintf(page + ret, ",edge");

 if (pc)
  ret += sprintf(page + ret, ",pc");

 if (any)
  ret += sprintf(page + ret, ",any");

 if (inv)
  ret += sprintf(page + ret, ",inv");

 if (cmask)
  ret += sprintf(page + ret, ",cmask=0x%02llx", cmask);

 ret += sprintf(page + ret, "\n");

 return ret;
}
