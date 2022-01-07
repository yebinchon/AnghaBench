
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* REG ;
 int __delay (int) ;
 int bus_error_jmp ;
 int catch_memory_errors ;
 char* kallsyms_lookup (unsigned long,unsigned long*,unsigned long*,char**,int ) ;
 int printf (char*,...) ;
 scalar_t__ setjmp (int ) ;
 int sync () ;
 int tmpstr ;

__attribute__((used)) static void xmon_print_symbol(unsigned long address, const char *mid,
         const char *after)
{
 char *modname;
 const char *name = ((void*)0);
 unsigned long offset, size;

 printf(REG, address);
 if (setjmp(bus_error_jmp) == 0) {
  catch_memory_errors = 1;
  sync();
  name = kallsyms_lookup(address, &size, &offset, &modname,
           tmpstr);
  sync();

  __delay(200);
 }

 catch_memory_errors = 0;

 if (name) {
  printf("%s%s+%#lx/%#lx", mid, name, offset, size);
  if (modname)
   printf(" [%s]", modname);
 }
 printf("%s", after);
}
