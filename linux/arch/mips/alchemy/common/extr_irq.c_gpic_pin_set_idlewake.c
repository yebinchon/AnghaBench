
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GPIC_CFG_IDLEWAKE ;
 int au1300_gpic_chgcfg (unsigned int,int ,int ) ;

__attribute__((used)) static inline void gpic_pin_set_idlewake(unsigned int gpio, int allow)
{
 au1300_gpic_chgcfg(gpio, GPIC_CFG_IDLEWAKE,
      allow ? GPIC_CFG_IDLEWAKE : 0);
}
