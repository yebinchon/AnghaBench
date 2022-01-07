
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int APIC_DM_FIXED ;
 unsigned int APIC_DM_NMI ;


__attribute__((used)) static inline unsigned int __prepare_ICR(unsigned int shortcut, int vector,
      unsigned int dest)
{
 unsigned int icr = shortcut | dest;

 switch (vector) {
 default:
  icr |= APIC_DM_FIXED | vector;
  break;
 case 128:
  icr |= APIC_DM_NMI;
  break;
 }
 return icr;
}
