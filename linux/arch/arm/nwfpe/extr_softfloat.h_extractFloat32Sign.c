
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int float32 ;
typedef int flag ;



__attribute__((used)) static inline flag extractFloat32Sign(float32 a)
{
 return a >> 31;
}
