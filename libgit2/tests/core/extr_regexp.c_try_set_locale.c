
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MB_CUR_MAX ;
 int cl_fail (char*) ;
 int cl_skip () ;
 int * old_locales ;
 int setlocale (int,char*) ;

__attribute__((used)) static void try_set_locale(int category)
{




 if (!setlocale(category, "UTF-8") &&
     !setlocale(category, "c.utf8") &&
     !setlocale(category, "en_US.UTF-8"))
  cl_skip();

 if (MB_CUR_MAX == 1)
  cl_fail("Expected locale to be switched to multibyte");
}
