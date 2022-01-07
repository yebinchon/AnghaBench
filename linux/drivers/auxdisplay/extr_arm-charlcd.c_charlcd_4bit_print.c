
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct charlcd {int dummy; } ;


 int HD_SET_DDRAM ;
 int charlcd_4bit_char (struct charlcd*,char const) ;
 int charlcd_4bit_command (struct charlcd*,int) ;
 int strlen (char const*) ;

__attribute__((used)) static void charlcd_4bit_print(struct charlcd *lcd, int line, const char *str)
{
 u8 offset;
 int i;






 if (line == 0)
  offset = 0;
 else if (line == 1)
  offset = 0x28;
 else
  return;


 charlcd_4bit_command(lcd, HD_SET_DDRAM | offset);


 for (i = 0; i < strlen(str) && i < 0x28; i++)
  charlcd_4bit_char(lcd, str[i]);
}
