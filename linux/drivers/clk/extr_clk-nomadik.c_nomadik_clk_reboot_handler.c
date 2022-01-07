
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct notifier_block {int dummy; } ;


 int NOTIFY_OK ;
 scalar_t__ SRC_XTALCR ;
 int SRC_XTALCR_MXTALEN ;
 int SRC_XTALCR_MXTALOVER ;
 int pr_crit (char*) ;
 int readl (scalar_t__) ;
 scalar_t__ src_base ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static int nomadik_clk_reboot_handler(struct notifier_block *this,
    unsigned long code,
    void *unused)
{
 u32 val;


 val = readl(src_base + SRC_XTALCR);
 val &= ~SRC_XTALCR_MXTALOVER;
 val |= SRC_XTALCR_MXTALEN;
 pr_crit("force-enabling MXTALO\n");
 writel(val, src_base + SRC_XTALCR);
 return NOTIFY_OK;
}
