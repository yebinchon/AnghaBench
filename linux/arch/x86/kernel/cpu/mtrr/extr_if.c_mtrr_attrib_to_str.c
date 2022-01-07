
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char const** mtrr_strings ;

const char *mtrr_attrib_to_str(int x)
{
 return (x <= 6) ? mtrr_strings[x] : "?";
}
