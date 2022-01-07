
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uchar ;


 int dowild (int const*,int const*,unsigned int) ;

int wildmatch(const char *pattern, const char *text, unsigned int flags)
{
 return dowild((const uchar*)pattern, (const uchar*)text, flags);
}
