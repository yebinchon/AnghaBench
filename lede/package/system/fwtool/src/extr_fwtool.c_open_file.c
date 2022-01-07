
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int * fopen (char const*,char*) ;
 int * stdin ;
 int * stdout ;
 int strcmp (char const*,char*) ;

__attribute__((used)) static FILE *
open_file(const char *name, bool write)
{
 FILE *ret;

 if (!strcmp(name, "-"))
  return write ? stdout : stdin;

 ret = fopen(name, write ? "w" : "r+");
 if (!ret && !write)
  ret = fopen(name, "r");

 return ret;
}
