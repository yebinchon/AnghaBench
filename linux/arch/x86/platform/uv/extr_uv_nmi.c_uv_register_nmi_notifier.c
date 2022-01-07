
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int NMI_LOCAL ;
 int NMI_UNKNOWN ;
 int pr_warn (char*) ;
 scalar_t__ register_nmi_handler (int ,int ,int ,char*) ;
 int uv_handle_nmi ;
 int uv_handle_nmi_ping ;

__attribute__((used)) static void uv_register_nmi_notifier(void)
{
 if (register_nmi_handler(NMI_UNKNOWN, uv_handle_nmi, 0, "uv"))
  pr_warn("UV: NMI handler failed to register\n");

 if (register_nmi_handler(NMI_LOCAL, uv_handle_nmi_ping, 0, "uvping"))
  pr_warn("UV: PING NMI handler failed to register\n");
}
