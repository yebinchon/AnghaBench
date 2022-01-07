
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;



__attribute__((used)) static inline bool bank_is_io(unsigned int bank, u32 bankcfg)
{
 if (bank < 2)
  return 1;

 return !(bankcfg & (1 << bank));
}
