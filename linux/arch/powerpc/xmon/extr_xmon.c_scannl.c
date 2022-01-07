
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int inchar () ;
 int termch ;

__attribute__((used)) static void
scannl(void)
{
 int c;

 c = termch;
 termch = 0;
 while( c != '\n' )
  c = inchar();
}
