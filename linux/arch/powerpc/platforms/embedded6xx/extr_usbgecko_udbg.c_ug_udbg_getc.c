
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int barrier () ;
 int ug_getc () ;

__attribute__((used)) static int ug_udbg_getc(void)
{
 int ch;

 while ((ch = ug_getc()) == -1)
  barrier();
 return ch;
}
