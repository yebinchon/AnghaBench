
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SD_SHARE_PKG_RESOURCES ;
 int SD_SHARE_POWERDOMAIN ;

__attribute__((used)) static inline int cpu_corepower_flags(void)
{
 return SD_SHARE_PKG_RESOURCES | SD_SHARE_POWERDOMAIN;
}
