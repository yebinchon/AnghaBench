
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ug_putc (char) ;

__attribute__((used)) static void ug_udbg_putc(char ch)
{
 ug_putc(ch);
}
