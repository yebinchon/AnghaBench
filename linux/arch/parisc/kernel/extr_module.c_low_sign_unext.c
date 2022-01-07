
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int sign_unext (int,int) ;

__attribute__((used)) static inline int low_sign_unext(int x, int len)
{
 int sign, temp;

 sign = (x >> (len-1)) & 1;
 temp = sign_unext(x, len-1);
 return (temp << 1) | sign;
}
