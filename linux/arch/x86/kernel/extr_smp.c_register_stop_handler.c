
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int NMI_FLAG_FIRST ;
 int NMI_LOCAL ;
 int register_nmi_handler (int ,int ,int ,char*) ;
 int smp_stop_nmi_callback ;

__attribute__((used)) static int register_stop_handler(void)
{
 return register_nmi_handler(NMI_LOCAL, smp_stop_nmi_callback,
        NMI_FLAG_FIRST, "smp_stop");
}
