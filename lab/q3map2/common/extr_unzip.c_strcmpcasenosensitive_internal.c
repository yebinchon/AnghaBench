
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int strcmpcasenosensitive_internal (const char* fileName1,const char* fileName2)
{
 for (;;)
 {
  char c1=*(fileName1++);
  char c2=*(fileName2++);
  if ((c1>='a') && (c1<='z'))
   c1 -= 0x20;
  if ((c2>='a') && (c2<='z'))
   c2 -= 0x20;
  if (c1=='\0')
   return ((c2=='\0') ? 0 : -1);
  if (c2=='\0')
   return 1;
  if (c1<c2)
   return -1;
  if (c1>c2)
   return 1;
 }
}
