
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Print (char*) ;
 int PrintLF () ;

__attribute__((used)) static void PrintError(char *s)
{
  Print("\nERROR: ");
  Print(s);
  PrintLF();
}
