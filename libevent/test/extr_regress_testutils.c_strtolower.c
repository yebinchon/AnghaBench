
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char EVUTIL_TOLOWER_ (char) ;

__attribute__((used)) static void strtolower(char *s)
{
 while (*s) {
  *s = EVUTIL_TOLOWER_(*s);
  ++s;
 }
}
