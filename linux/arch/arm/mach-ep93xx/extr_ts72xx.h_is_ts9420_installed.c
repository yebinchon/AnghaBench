
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TS72XX_OPTIONS2_TS9420 ;
 int TS72XX_OPTIONS2_VIRT_BASE ;
 int __raw_readb (int ) ;

__attribute__((used)) static inline int is_ts9420_installed(void)
{
 return !!(__raw_readb(TS72XX_OPTIONS2_VIRT_BASE) &
     TS72XX_OPTIONS2_TS9420);
}
