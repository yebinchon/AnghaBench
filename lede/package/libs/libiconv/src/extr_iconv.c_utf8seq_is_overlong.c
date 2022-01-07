
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline int utf8seq_is_overlong(char *s, int n)
{
 switch (n)
 {
 case 2:

  return (((*s >> 1) == 0x60) &&
    ((*(s+1) >> 6) == 0x02));

 case 3:

  return ((*s == 0xE0) &&
    ((*(s+1) >> 5) == 0x04) &&
    ((*(s+2) >> 6) == 0x02));

 case 4:

  return ((*s == 0xF0) &&
    ((*(s+1) >> 4) == 0x08) &&
    ((*(s+2) >> 6) == 0x02) &&
    ((*(s+3) >> 6) == 0x02));
 }

 return 0;
}
