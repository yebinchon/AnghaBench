
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GPIROUTNMI ;
 int PAD_CFG_DW0_GPP_D_0 ;
 int nmi_debug (char*,char*) ;
 int uv_init_hubless_pch_io (int ,int ,int ) ;
 scalar_t__ uv_pch_intr_enable ;
 scalar_t__ uv_pch_intr_now_enabled ;

__attribute__((used)) static void uv_nmi_setup_hubless_intr(void)
{
 uv_pch_intr_now_enabled = uv_pch_intr_enable;

 uv_init_hubless_pch_io(
  PAD_CFG_DW0_GPP_D_0, GPIROUTNMI,
  uv_pch_intr_now_enabled ? GPIROUTNMI : 0);

 nmi_debug("UV:NMI: GPP_D_0 interrupt %s\n",
  uv_pch_intr_now_enabled ? "enabled" : "disabled");
}
