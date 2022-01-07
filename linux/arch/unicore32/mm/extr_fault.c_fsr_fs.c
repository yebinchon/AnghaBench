
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline int fsr_fs(unsigned int fsr)
{

 return (fsr & 31) + ((fsr & (3 << 5)) >> 5);
}
