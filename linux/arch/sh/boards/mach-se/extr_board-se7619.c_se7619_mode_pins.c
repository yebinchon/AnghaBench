
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MODE_PIN0 ;
 int MODE_PIN2 ;

__attribute__((used)) static int se7619_mode_pins(void)
{
 return MODE_PIN2 | MODE_PIN0;
}
