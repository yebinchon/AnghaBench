
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline int sign_unext(int x, int len)
{
 int len_ones;

 len_ones = (1 << len) - 1;
 return x & len_ones;
}
