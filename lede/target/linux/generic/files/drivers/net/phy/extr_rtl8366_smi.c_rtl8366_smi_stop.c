
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtl8366_smi {unsigned int gpio_sda; unsigned int gpio_sck; } ;


 int gpio_direction_input (unsigned int) ;
 int gpio_set_value (unsigned int,int) ;
 int rtl8366_smi_clk_delay (struct rtl8366_smi*) ;

__attribute__((used)) static void rtl8366_smi_stop(struct rtl8366_smi *smi)
{
 unsigned int sda = smi->gpio_sda;
 unsigned int sck = smi->gpio_sck;

 rtl8366_smi_clk_delay(smi);
 gpio_set_value(sda, 0);
 gpio_set_value(sck, 1);
 rtl8366_smi_clk_delay(smi);
 gpio_set_value(sda, 1);
 rtl8366_smi_clk_delay(smi);
 gpio_set_value(sck, 1);
 rtl8366_smi_clk_delay(smi);
 gpio_set_value(sck, 0);
 rtl8366_smi_clk_delay(smi);
 gpio_set_value(sck, 1);


 rtl8366_smi_clk_delay(smi);
 gpio_set_value(sck, 0);
 rtl8366_smi_clk_delay(smi);
 gpio_set_value(sck, 1);


 gpio_direction_input(sda);
 gpio_direction_input(sck);
}
