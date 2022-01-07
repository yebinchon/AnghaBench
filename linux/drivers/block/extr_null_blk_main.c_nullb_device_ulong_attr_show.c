
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ssize_t ;


 int PAGE_SIZE ;
 int snprintf (char*,int ,char*,unsigned long) ;

__attribute__((used)) static inline ssize_t nullb_device_ulong_attr_show(unsigned long val,
 char *page)
{
 return snprintf(page, PAGE_SIZE, "%lu\n", val);
}
