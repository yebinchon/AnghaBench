
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ADAP_DELAY ;
 int gpio_direction_output (int ,int) ;
 int sda_index ;
 int udelay (int ) ;

__attribute__((used)) static inline void sdalo(void)
{
 gpio_direction_output(sda_index, 1);
 udelay(ADAP_DELAY);
}
