
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int FAULT_CODE_ITLB ;
 unsigned int FAULT_CODE_WRITE ;

__attribute__((used)) static inline unsigned int
expevt_to_fault_code(unsigned long expevt)
{
 if (expevt == 0xa40)
  return FAULT_CODE_ITLB;
 else if (expevt == 0x060)
  return FAULT_CODE_WRITE;

 return 0;
}
