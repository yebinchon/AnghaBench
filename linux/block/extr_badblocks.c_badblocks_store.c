
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct badblocks {int dummy; } ;
typedef size_t ssize_t ;


 size_t EINVAL ;
 size_t ENOSPC ;
 scalar_t__ badblocks_set (struct badblocks*,unsigned long long,int,int) ;
 int sscanf (char const*,char*,unsigned long long*,int*,char*) ;

ssize_t badblocks_store(struct badblocks *bb, const char *page, size_t len,
   int unack)
{
 unsigned long long sector;
 int length;
 char newline;

 switch (sscanf(page, "%llu %d%c", &sector, &length, &newline)) {
 case 3:
  if (newline != '\n')
   return -EINVAL;

 case 2:
  if (length <= 0)
   return -EINVAL;
  break;
 default:
  return -EINVAL;
 }

 if (badblocks_set(bb, sector, length, !unack))
  return -ENOSPC;
 else
  return len;
}
