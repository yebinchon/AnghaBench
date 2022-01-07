
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int HPET_CFG ;
 unsigned int HPET_CFG_ENABLE ;
 unsigned int hpet_read (int ) ;
 int hpet_write (int ,unsigned int) ;

__attribute__((used)) static void hpet_stop_counter(void)
{
 unsigned int cfg = hpet_read(HPET_CFG);

 cfg &= ~HPET_CFG_ENABLE;
 hpet_write(HPET_CFG, cfg);
}
