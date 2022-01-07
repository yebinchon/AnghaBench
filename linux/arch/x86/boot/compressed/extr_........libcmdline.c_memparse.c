
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long long simple_strtoull (char const*,char**,int ) ;

unsigned long long memparse(const char *ptr, char **retptr)
{
 char *endptr;

 unsigned long long ret = simple_strtoull(ptr, &endptr, 0);

 switch (*endptr) {
 case 'E':
 case 'e':
  ret <<= 10;

 case 'P':
 case 'p':
  ret <<= 10;

 case 'T':
 case 't':
  ret <<= 10;

 case 'G':
 case 'g':
  ret <<= 10;

 case 'M':
 case 'm':
  ret <<= 10;

 case 'K':
 case 'k':
  ret <<= 10;
  endptr++;
 default:
  break;
 }

 if (retptr)
  *retptr = endptr;

 return ret;
}
