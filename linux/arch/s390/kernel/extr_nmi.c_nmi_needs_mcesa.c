
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ MACHINE_HAS_GS ;
 scalar_t__ MACHINE_HAS_VX ;

__attribute__((used)) static inline int nmi_needs_mcesa(void)
{
 return MACHINE_HAS_VX || MACHINE_HAS_GS;
}
