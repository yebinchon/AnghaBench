
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int nvram_handle_t ;


 char* nvram_get (int *,char const*) ;
 int printf (char*,char const*) ;

__attribute__((used)) static int do_get(nvram_handle_t *nvram, const char *var)
{
 const char *val;
 int stat = 1;

 if( (val = nvram_get(nvram, var)) != ((void*)0) )
 {
  printf("%s\n", val);
  stat = 0;
 }

 return stat;
}
