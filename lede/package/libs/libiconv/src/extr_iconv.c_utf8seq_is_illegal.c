
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline int utf8seq_is_illegal(char *s, int n)
{
 return ((n == 3) && (*s == 0xEF) && (*(s+1) == 0xBF) &&
         (*(s+2) >= 0xBE) && (*(s+2) <= 0xBF));
}
