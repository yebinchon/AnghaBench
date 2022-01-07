
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int memcpy (char*,char const*,size_t) ;

__attribute__((used)) static size_t append_str(char *dst, const char *s, size_t l)
{
    memcpy(dst, s, l);
    return l;
}
