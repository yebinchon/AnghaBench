
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int FSR_FS3_0 ;
 unsigned int FSR_FS4 ;

__attribute__((used)) static inline int fsr_fs(unsigned int fsr)
{
 return (fsr & FSR_FS3_0) | (fsr & FSR_FS4) >> 6;
}
