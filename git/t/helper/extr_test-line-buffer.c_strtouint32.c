
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uintmax_t ;
typedef int uint32_t ;


 int die (char*,char const*) ;
 int strtoumax (char const*,char**,int) ;

__attribute__((used)) static uint32_t strtouint32(const char *s)
{
 char *end;
 uintmax_t n = strtoumax(s, &end, 10);
 if (*s == '\0' || *end != '\0')
  die("invalid count: %s", s);
 return (uint32_t) n;
}
