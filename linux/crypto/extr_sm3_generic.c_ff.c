
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;



__attribute__((used)) static inline u32 ff(unsigned int n, u32 a, u32 b, u32 c)
{
 return (n < 16) ? (a ^ b ^ c) : ((a & b) | (a & c) | (b & c));
}
