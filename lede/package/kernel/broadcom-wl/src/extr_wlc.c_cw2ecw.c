
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline int cw2ecw(int cw)
{
 int i;
 for (cw++, i = 0; cw; i++) cw >>=1;
 return i - 1;
}
