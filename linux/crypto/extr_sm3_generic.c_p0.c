
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int rol32 (int,int) ;

__attribute__((used)) static inline u32 p0(u32 x)
{
 return x ^ rol32(x, 9) ^ rol32(x, 17);
}
