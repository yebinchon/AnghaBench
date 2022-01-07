
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device_node {int dummy; } ;
typedef int name ;
struct TYPE_2__ {int sccr2; int sccr1; int scfr1; int scfr2; } ;


 size_t ARRAY_SIZE (int *) ;
 int CLK_DIVIDER_ONE_BASED ;
 int ENOTSUPP ;
 int ERR_PTR (int ) ;
 size_t MPC512x_CLK_AC97 ;
 size_t MPC512x_CLK_AXE ;
 size_t MPC512x_CLK_BDLC ;
 size_t MPC512x_CLK_CAN_CLK_IN ;
 size_t MPC512x_CLK_CSB ;
 size_t MPC512x_CLK_DDR ;
 size_t MPC512x_CLK_DDR_UG ;
 size_t MPC512x_CLK_DIU ;
 size_t MPC512x_CLK_DIU_UG ;
 size_t MPC512x_CLK_DIU_x4 ;
 size_t MPC512x_CLK_DUMMY ;
 size_t MPC512x_CLK_E300 ;
 size_t MPC512x_CLK_FEC ;
 size_t MPC512x_CLK_FEC2 ;
 size_t MPC512x_CLK_I2C ;
 size_t MPC512x_CLK_IIM ;
 size_t MPC512x_CLK_IPS ;
 size_t MPC512x_CLK_LPC ;
 size_t MPC512x_CLK_LPC_UG ;
 size_t MPC512x_CLK_MBX ;
 size_t MPC512x_CLK_MBX_3D ;
 size_t MPC512x_CLK_MBX_3D_UG ;
 size_t MPC512x_CLK_MBX_BUS ;
 size_t MPC512x_CLK_MBX_BUS_UG ;
 size_t MPC512x_CLK_MBX_UG ;
 size_t MPC512x_CLK_MEM ;
 size_t MPC512x_CLK_NFC ;
 size_t MPC512x_CLK_NFC_UG ;
 size_t MPC512x_CLK_PATA ;
 size_t MPC512x_CLK_PCI ;
 size_t MPC512x_CLK_PCI_UG ;
 size_t MPC512x_CLK_PSC0 ;
 size_t MPC512x_CLK_PSC_FIFO ;
 size_t MPC512x_CLK_PSC_MCLK_IN ;
 size_t MPC512x_CLK_SATA ;
 size_t MPC512x_CLK_SDHC ;
 size_t MPC512x_CLK_SDHC2 ;
 size_t MPC512x_CLK_SDHC2_UG ;
 size_t MPC512x_CLK_SDHC_UG ;
 size_t MPC512x_CLK_SDHC_x4 ;
 size_t MPC512x_CLK_SPDIF ;
 size_t MPC512x_CLK_SPDIF_TX_IN ;
 size_t MPC512x_CLK_SYS ;
 size_t MPC512x_CLK_USB1 ;
 size_t MPC512x_CLK_USB2 ;
 size_t MPC512x_CLK_VIU ;
 int clk_prepare_enable (int ) ;
 TYPE_1__* clkregs ;
 int * clks ;
 int divtab_1234 ;
 int divtab_2346 ;
 int get_cpmf_mult_x2 () ;
 int get_freq_from_dt (char*) ;
 int * mclk_mscan_data ;
 int * mclk_outclk_data ;
 int * mclk_psc_data ;
 int * mclk_spdif_data ;
 int mpc512x_clk_divider (char*,char*,int ,int *,int,int,int ) ;
 int mpc512x_clk_divtable (char*,char*,int *,int,int,int ) ;
 int mpc512x_clk_factor (char*,char*,int,int) ;
 int mpc512x_clk_fixed (char*,int) ;
 int mpc512x_clk_gated (char*,char*,int *,int) ;
 int mpc512x_clk_setup_mclk (int *,size_t) ;
 int mpc512x_clk_setup_ref_clock (struct device_node*,int,int*,int*,int*) ;
 int snprintf (char*,int,char*,size_t) ;
 scalar_t__ soc_has_axe () ;
 scalar_t__ soc_has_fec2 () ;
 scalar_t__ soc_has_mbx () ;
 scalar_t__ soc_has_mclk_mux0_canin () ;
 scalar_t__ soc_has_nfc_5125 () ;
 scalar_t__ soc_has_outclk () ;
 scalar_t__ soc_has_pata () ;
 scalar_t__ soc_has_pci () ;
 scalar_t__ soc_has_sata () ;
 scalar_t__ soc_has_sdhc2 () ;
 scalar_t__ soc_has_spdif () ;
 scalar_t__ soc_has_viu () ;
 size_t soc_max_pscnum () ;

__attribute__((used)) static void mpc512x_clk_setup_clock_tree(struct device_node *np, int busfreq)
{
 int sys_mul, sys_div, ips_div;
 int mul, div;
 size_t mclk_idx;
 int freq;
 mpc512x_clk_setup_ref_clock(np, busfreq, &sys_mul, &sys_div, &ips_div);


 clks[MPC512x_CLK_SYS] = mpc512x_clk_factor("sys", "ref",
         sys_mul, sys_div);
 clks[MPC512x_CLK_CSB] = mpc512x_clk_factor("csb", "sys", 1, 2);
 clks[MPC512x_CLK_IPS] = mpc512x_clk_divtable("ips", "csb",
           &clkregs->scfr1, 23, 3,
           divtab_2346);


 clks[MPC512x_CLK_DDR_UG] = mpc512x_clk_factor("ddr-ug", "sys", 1, 2);
 clks[MPC512x_CLK_SDHC_x4] = mpc512x_clk_factor("sdhc-x4", "csb", 2, 1);
 clks[MPC512x_CLK_SDHC_UG] = mpc512x_clk_divider("sdhc-ug", "sdhc-x4", 0,
       &clkregs->scfr2, 1, 7,
       CLK_DIVIDER_ONE_BASED);
 if (soc_has_sdhc2()) {
  clks[MPC512x_CLK_SDHC2_UG] = mpc512x_clk_divider(
    "sdhc2-ug", "sdhc-x4", 0, &clkregs->scfr2,
    9, 7, CLK_DIVIDER_ONE_BASED);
 }

 clks[MPC512x_CLK_DIU_x4] = mpc512x_clk_factor("diu-x4", "csb", 4, 1);
 clks[MPC512x_CLK_DIU_UG] = mpc512x_clk_divider("diu-ug", "diu-x4", 0,
             &clkregs->scfr1, 0, 8,
             CLK_DIVIDER_ONE_BASED);
 mul = get_cpmf_mult_x2();
 div = 2;
 clks[MPC512x_CLK_E300] = mpc512x_clk_factor("e300", "csb", mul, div);

 if (soc_has_mbx()) {
  clks[MPC512x_CLK_MBX_BUS_UG] = mpc512x_clk_factor(
    "mbx-bus-ug", "csb", 1, 2);
  clks[MPC512x_CLK_MBX_UG] = mpc512x_clk_divtable(
    "mbx-ug", "mbx-bus-ug", &clkregs->scfr1,
    14, 3, divtab_1234);
  clks[MPC512x_CLK_MBX_3D_UG] = mpc512x_clk_factor(
    "mbx-3d-ug", "mbx-ug", 1, 1);
 }
 if (soc_has_pci()) {
  clks[MPC512x_CLK_PCI_UG] = mpc512x_clk_divtable(
    "pci-ug", "csb", &clkregs->scfr1,
    20, 3, divtab_2346);
 }
 if (soc_has_nfc_5125()) {





  clks[MPC512x_CLK_NFC_UG] = ERR_PTR(-ENOTSUPP);
 } else {
  clks[MPC512x_CLK_NFC_UG] = mpc512x_clk_divtable(
    "nfc-ug", "ips", &clkregs->scfr1,
    8, 3, divtab_1234);
 }
 clks[MPC512x_CLK_LPC_UG] = mpc512x_clk_divtable("lpc-ug", "ips",
       &clkregs->scfr1, 11, 3,
       divtab_1234);

 clks[MPC512x_CLK_LPC] = mpc512x_clk_gated("lpc", "lpc-ug",
        &clkregs->sccr1, 30);
 clks[MPC512x_CLK_NFC] = mpc512x_clk_gated("nfc", "nfc-ug",
        &clkregs->sccr1, 29);
 if (soc_has_pata()) {
  clks[MPC512x_CLK_PATA] = mpc512x_clk_gated(
    "pata", "ips", &clkregs->sccr1, 28);
 }

 for (mclk_idx = 0; mclk_idx < soc_max_pscnum(); mclk_idx++) {
  char name[12];
  snprintf(name, sizeof(name), "psc%d", mclk_idx);
  clks[MPC512x_CLK_PSC0 + mclk_idx] = mpc512x_clk_gated(
    name, "ips", &clkregs->sccr1, 27 - mclk_idx);
  mpc512x_clk_setup_mclk(&mclk_psc_data[mclk_idx], mclk_idx);
 }
 clks[MPC512x_CLK_PSC_FIFO] = mpc512x_clk_gated("psc-fifo", "ips",
             &clkregs->sccr1, 15);
 if (soc_has_sata()) {
  clks[MPC512x_CLK_SATA] = mpc512x_clk_gated(
    "sata", "ips", &clkregs->sccr1, 14);
 }
 clks[MPC512x_CLK_FEC] = mpc512x_clk_gated("fec", "ips",
        &clkregs->sccr1, 13);
 if (soc_has_pci()) {
  clks[MPC512x_CLK_PCI] = mpc512x_clk_gated(
    "pci", "pci-ug", &clkregs->sccr1, 11);
 }
 clks[MPC512x_CLK_DDR] = mpc512x_clk_gated("ddr", "ddr-ug",
        &clkregs->sccr1, 10);
 if (soc_has_fec2()) {
  clks[MPC512x_CLK_FEC2] = mpc512x_clk_gated(
    "fec2", "ips", &clkregs->sccr1, 9);
 }

 clks[MPC512x_CLK_DIU] = mpc512x_clk_gated("diu", "diu-ug",
        &clkregs->sccr2, 31);
 if (soc_has_axe()) {
  clks[MPC512x_CLK_AXE] = mpc512x_clk_gated(
    "axe", "csb", &clkregs->sccr2, 30);
 }
 clks[MPC512x_CLK_MEM] = mpc512x_clk_gated("mem", "ips",
        &clkregs->sccr2, 29);
 clks[MPC512x_CLK_USB1] = mpc512x_clk_gated("usb1", "csb",
         &clkregs->sccr2, 28);
 clks[MPC512x_CLK_USB2] = mpc512x_clk_gated("usb2", "csb",
         &clkregs->sccr2, 27);
 clks[MPC512x_CLK_I2C] = mpc512x_clk_gated("i2c", "ips",
        &clkregs->sccr2, 26);

 clks[MPC512x_CLK_BDLC] = mpc512x_clk_gated("bdlc", "ips",
         &clkregs->sccr2, 25);
 for (mclk_idx = 0; mclk_idx < ARRAY_SIZE(mclk_mscan_data); mclk_idx++)
  mpc512x_clk_setup_mclk(&mclk_mscan_data[mclk_idx], mclk_idx);
 clks[MPC512x_CLK_SDHC] = mpc512x_clk_gated("sdhc", "sdhc-ug",
         &clkregs->sccr2, 24);

 if (soc_has_spdif()) {
  clks[MPC512x_CLK_SPDIF] = mpc512x_clk_gated(
    "spdif", "ips", &clkregs->sccr2, 23);
  mpc512x_clk_setup_mclk(&mclk_spdif_data[0], 0);
 }
 if (soc_has_mbx()) {
  clks[MPC512x_CLK_MBX_BUS] = mpc512x_clk_gated(
    "mbx-bus", "mbx-bus-ug", &clkregs->sccr2, 22);
  clks[MPC512x_CLK_MBX] = mpc512x_clk_gated(
    "mbx", "mbx-ug", &clkregs->sccr2, 21);
  clks[MPC512x_CLK_MBX_3D] = mpc512x_clk_gated(
    "mbx-3d", "mbx-3d-ug", &clkregs->sccr2, 20);
 }
 clks[MPC512x_CLK_IIM] = mpc512x_clk_gated("iim", "csb",
        &clkregs->sccr2, 19);
 if (soc_has_viu()) {
  clks[MPC512x_CLK_VIU] = mpc512x_clk_gated(
    "viu", "csb", &clkregs->sccr2, 18);
 }
 if (soc_has_sdhc2()) {
  clks[MPC512x_CLK_SDHC2] = mpc512x_clk_gated(
    "sdhc-2", "sdhc2-ug", &clkregs->sccr2, 17);
 }

 if (soc_has_outclk()) {
  size_t idx;
  for (idx = 0; idx < ARRAY_SIZE(mclk_outclk_data); idx++)
   mpc512x_clk_setup_mclk(&mclk_outclk_data[idx], idx);
 }





 freq = get_freq_from_dt("psc_mclk_in");
 if (!freq)
  freq = 25000000;
 clks[MPC512x_CLK_PSC_MCLK_IN] = mpc512x_clk_fixed("psc_mclk_in", freq);
 if (soc_has_mclk_mux0_canin()) {
  freq = get_freq_from_dt("can_clk_in");
  clks[MPC512x_CLK_CAN_CLK_IN] = mpc512x_clk_fixed(
    "can_clk_in", freq);
 } else {
  freq = get_freq_from_dt("spdif_tx_in");
  clks[MPC512x_CLK_SPDIF_TX_IN] = mpc512x_clk_fixed(
    "spdif_tx_in", freq);
  freq = get_freq_from_dt("spdif_rx_in");
  clks[MPC512x_CLK_SPDIF_TX_IN] = mpc512x_clk_fixed(
    "spdif_rx_in", freq);
 }


 clks[MPC512x_CLK_AC97] = mpc512x_clk_fixed("ac97", 24567000);






 clk_prepare_enable(clks[MPC512x_CLK_DUMMY]);
 clk_prepare_enable(clks[MPC512x_CLK_E300]);
 clk_prepare_enable(clks[MPC512x_CLK_DDR]);
 clk_prepare_enable(clks[MPC512x_CLK_MEM]);
 clk_prepare_enable(clks[MPC512x_CLK_IPS]);
 clk_prepare_enable(clks[MPC512x_CLK_LPC]);
}
