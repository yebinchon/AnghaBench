
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;



__attribute__((used)) static inline u32 gg(unsigned int n, u32 e, u32 f, u32 g)
{
 return (n < 16) ? (e ^ f ^ g) : ((e & f) | ((~e) & g));
}
