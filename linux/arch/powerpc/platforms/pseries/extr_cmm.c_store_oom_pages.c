
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;


 int CAP_SYS_ADMIN ;
 size_t EBADMSG ;
 size_t EPERM ;
 int capable (int ) ;
 scalar_t__ oom_freed_pages ;
 unsigned long simple_strtoul (char const*,int *,int) ;

__attribute__((used)) static ssize_t store_oom_pages(struct device *dev,
          struct device_attribute *attr,
          const char *buf, size_t count)
{
 unsigned long val = simple_strtoul (buf, ((void*)0), 10);

 if (!capable(CAP_SYS_ADMIN))
  return -EPERM;
 if (val != 0)
  return -EBADMSG;

 oom_freed_pages = 0;
 return count;
}
