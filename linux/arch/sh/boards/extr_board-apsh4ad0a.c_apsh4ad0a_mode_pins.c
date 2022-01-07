
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MODE_PIN0 ;
 int MODE_PIN1 ;
 int MODE_PIN10 ;
 int MODE_PIN11 ;
 int MODE_PIN12 ;
 int MODE_PIN13 ;
 int MODE_PIN14 ;
 int MODE_PIN2 ;
 int MODE_PIN3 ;
 int MODE_PIN4 ;
 int MODE_PIN5 ;
 int MODE_PIN6 ;
 int MODE_PIN7 ;
 int MODE_PIN8 ;
 int MODE_PIN9 ;

__attribute__((used)) static int apsh4ad0a_mode_pins(void)
{
 int value = 0;





 value |= MODE_PIN0;
 value |= MODE_PIN1;
 value &= ~MODE_PIN2;
 value &= ~MODE_PIN3;
 value &= ~MODE_PIN4;
 value |= MODE_PIN5;
 value |= MODE_PIN6;
 value |= MODE_PIN7;
 value |= MODE_PIN8;
 value |= MODE_PIN9;
 value &= ~MODE_PIN10;
 value &= ~MODE_PIN11;
 value &= ~MODE_PIN12;
 value |= MODE_PIN13;
 value &= ~MODE_PIN14;

 return value;
}
