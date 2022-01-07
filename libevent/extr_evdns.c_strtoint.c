
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strtol (char const* const,char**,int) ;

__attribute__((used)) static int
strtoint(const char *const str)
{
 char *endptr;
 const int r = strtol(str, &endptr, 10);
 if (*endptr) return -1;
 return r;
}
