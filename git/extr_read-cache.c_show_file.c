
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int printf (char const*,char const*) ;

__attribute__((used)) static void show_file(const char * fmt, const char * name, int in_porcelain,
        int * first, const char *header_msg)
{
 if (in_porcelain && *first && header_msg) {
  printf("%s\n", header_msg);
  *first = 0;
 }
 printf(fmt, name);
}
