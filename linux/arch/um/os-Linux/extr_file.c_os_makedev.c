
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long long makedev (unsigned int,unsigned int) ;

unsigned long long os_makedev(unsigned major, unsigned minor)
{
 return makedev(major, minor);
}
