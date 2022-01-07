
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int NMI_UNKNOWN ;
 scalar_t__ WDOG_PREOP_GIVE_DATA ;
 scalar_t__ WDOG_PRETIMEOUT_NMI ;
 int ipmi_nmi ;
 int nmi_handler_registered ;
 int pr_warn (char*) ;
 scalar_t__ preaction_val ;
 int preop_op (char*,int *) ;
 scalar_t__ preop_val ;
 int register_nmi_handler (int ,int ,int ,char*) ;
 int unregister_nmi_handler (int ,char*) ;

__attribute__((used)) static void check_parms(void)
{
}
