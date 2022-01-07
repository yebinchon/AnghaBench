
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct traverse_info {int dummy; } ;
struct name_entry {int dummy; } ;


 int debug_name_entry (int,struct name_entry*) ;
 int debug_path (struct traverse_info*) ;
 int printf (char*,unsigned long,unsigned long,int) ;
 int putchar (char) ;

__attribute__((used)) static void debug_unpack_callback(int n,
      unsigned long mask,
      unsigned long dirmask,
      struct name_entry *names,
      struct traverse_info *info)
{
 int i;
 printf("* unpack mask %lu, dirmask %lu, cnt %d ",
        mask, dirmask, n);
 debug_path(info);
 putchar('\n');
 for (i = 0; i < n; i++)
  debug_name_entry(i, names + i);
}
