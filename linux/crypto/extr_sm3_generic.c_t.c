
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int SM3_T1 ;
 int SM3_T2 ;

__attribute__((used)) static inline u32 t(unsigned int n)
{
 return (n < 16) ? SM3_T1 : SM3_T2;
}
