
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TB0219_LED ;
 int tb0219_write (int ,char) ;

__attribute__((used)) static inline int set_led(char command)
{
 tb0219_write(TB0219_LED, command);

 return 0;
}
