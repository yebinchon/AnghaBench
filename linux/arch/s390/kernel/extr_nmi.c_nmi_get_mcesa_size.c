
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ MACHINE_HAS_GS ;
 unsigned long MCESA_MAX_SIZE ;
 unsigned long MCESA_MIN_SIZE ;

__attribute__((used)) static inline unsigned long nmi_get_mcesa_size(void)
{
 if (MACHINE_HAS_GS)
  return MCESA_MAX_SIZE;
 return MCESA_MIN_SIZE;
}
