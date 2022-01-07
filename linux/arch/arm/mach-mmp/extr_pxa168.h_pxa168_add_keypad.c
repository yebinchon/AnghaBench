
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pxa27x_keypad_platform_data {int clear_wakeup_event; } ;


 scalar_t__ cpu_is_pxa168 () ;
 int pxa168_clear_keypad_wakeup ;
 int pxa168_device_keypad ;
 int pxa_register_device (int *,struct pxa27x_keypad_platform_data*,int) ;

__attribute__((used)) static inline int pxa168_add_keypad(struct pxa27x_keypad_platform_data *data)
{
 if (cpu_is_pxa168())
  data->clear_wakeup_event = pxa168_clear_keypad_wakeup;

 return pxa_register_device(&pxa168_device_keypad, data, sizeof(*data));
}
