
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ memcmp (char const*,char const*,size_t) ;
 size_t strlen (char const*) ;

__attribute__((used)) static int bufis(const char *s, size_t l, const char *t)
{
    return strlen(t) == l && memcmp(s, t, l) == 0;
}
