
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char uchar ;


 scalar_t__ domalloc (int) ;
 scalar_t__ strncpy (char*,char*,int) ;

uchar *
newstring(uchar *s, int l, int o)
{
 uchar *ns = (uchar *)domalloc(l+o+1);

 ns[l+o] = '\0';
 return (uchar*)strncpy((char*)ns+o, (char*)s, l) - o;
}
