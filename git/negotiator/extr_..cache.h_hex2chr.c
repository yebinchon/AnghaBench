
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int hexval (char const) ;

__attribute__((used)) static inline int hex2chr(const char *s)
{
 unsigned int val = hexval(s[0]);
 return (val & ~0xf) ? val : (val << 4) | hexval(s[1]);
}
