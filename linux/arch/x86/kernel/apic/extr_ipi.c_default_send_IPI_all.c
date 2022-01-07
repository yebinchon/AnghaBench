
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int APIC_DEST_ALLINC ;
 int __default_send_IPI_shortcut (int ,int) ;

void default_send_IPI_all(int vector)
{
 __default_send_IPI_shortcut(APIC_DEST_ALLINC, vector);
}
