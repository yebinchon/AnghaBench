
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long __memcpy_mcsafe (char*,char*,int) ;

unsigned long
mcsafe_handle_tail(char *to, char *from, unsigned len)
{
 for (; len; --len, to++, from++) {




  unsigned long rem = __memcpy_mcsafe(to, from, 1);

  if (rem)
   break;
 }
 return len;
}
