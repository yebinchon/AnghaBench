
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int ror (int,int) ;

__attribute__((used)) static inline uint32_t sigma0(uint32_t x)
{
 return ror(x, 2) ^ ror(x, 13) ^ ror(x, 22);
}
