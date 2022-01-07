
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int APIC_DEST_ALLBUT ;
 int __x2apic_send_IPI_shorthand (int,int ) ;

__attribute__((used)) static void x2apic_send_IPI_allbutself(int vector)
{
 __x2apic_send_IPI_shorthand(vector, APIC_DEST_ALLBUT);
}
