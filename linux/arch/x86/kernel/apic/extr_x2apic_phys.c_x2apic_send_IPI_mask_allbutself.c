
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpumask {int dummy; } ;


 int APIC_DEST_ALLBUT ;
 int __x2apic_send_IPI_mask (struct cpumask const*,int,int ) ;

__attribute__((used)) static void
 x2apic_send_IPI_mask_allbutself(const struct cpumask *mask, int vector)
{
 __x2apic_send_IPI_mask(mask, vector, APIC_DEST_ALLBUT);
}
