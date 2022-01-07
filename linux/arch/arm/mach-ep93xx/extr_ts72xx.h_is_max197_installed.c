
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TS72XX_OPTIONS_MAX197 ;
 int TS72XX_OPTIONS_VIRT_BASE ;
 int __raw_readb (int ) ;

__attribute__((used)) static inline int is_max197_installed(void)
{
 return !!(__raw_readb(TS72XX_OPTIONS_VIRT_BASE) &
     TS72XX_OPTIONS_MAX197);
}
