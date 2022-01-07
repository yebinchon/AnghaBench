
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int THRESHOLD_APIC_VECTOR ;
 int pr_err (char*,int ) ;

__attribute__((used)) static void default_threshold_interrupt(void)
{
 pr_err("Unexpected threshold interrupt at vector %x\n",
  THRESHOLD_APIC_VECTOR);
}
