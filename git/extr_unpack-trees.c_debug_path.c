
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct traverse_info {char* name; struct traverse_info* prev; } ;


 int printf (char*,char*) ;
 int putchar (char) ;

__attribute__((used)) static void debug_path(struct traverse_info *info)
{
 if (info->prev) {
  debug_path(info->prev);
  if (*info->prev->name)
   putchar('/');
 }
 printf("%s", info->name);
}
