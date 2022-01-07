
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct charlcd {int dummy; } ;
struct TYPE_3__ {scalar_t__ bl; } ;
struct TYPE_4__ {TYPE_1__ pins; } ;


 int LCD_BIT_BL ;
 scalar_t__ PIN_NONE ;
 int bits ;
 int clear_bit (int ,int ) ;
 TYPE_2__ lcd ;
 int panel_set_bits () ;
 int pprt_lock ;
 int set_bit (int ,int ) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static void lcd_backlight(struct charlcd *charlcd, int on)
{
 if (lcd.pins.bl == PIN_NONE)
  return;


 spin_lock_irq(&pprt_lock);
 if (on)
  set_bit(LCD_BIT_BL, bits);
 else
  clear_bit(LCD_BIT_BL, bits);
 panel_set_bits();
 spin_unlock_irq(&pprt_lock);
}
