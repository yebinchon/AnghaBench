
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra_bpmp_clk_info {int flags; unsigned int num_parents; unsigned int* parents; int name; int id; } ;
struct tegra_bpmp {int dev; } ;
struct seq_buf {int dummy; } ;
typedef int flags ;


 int TEGRA_BPMP_CLK_HAS_MUX ;
 int TEGRA_BPMP_CLK_HAS_SET_RATE ;
 int TEGRA_BPMP_CLK_IS_ROOT ;
 int dev_printk (char const*,int ,char*,unsigned int,...) ;
 int seq_buf_init (struct seq_buf*,char*,int) ;
 int seq_buf_printf (struct seq_buf*,char*,...) ;

__attribute__((used)) static void tegra_bpmp_clk_info_dump(struct tegra_bpmp *bpmp,
         const char *level,
         const struct tegra_bpmp_clk_info *info)
{
 const char *prefix = "";
 struct seq_buf buf;
 unsigned int i;
 char flags[64];

 seq_buf_init(&buf, flags, sizeof(flags));

 if (info->flags)
  seq_buf_printf(&buf, "(");

 if (info->flags & TEGRA_BPMP_CLK_HAS_MUX) {
  seq_buf_printf(&buf, "%smux", prefix);
  prefix = ", ";
 }

 if ((info->flags & TEGRA_BPMP_CLK_HAS_SET_RATE) == 0) {
  seq_buf_printf(&buf, "%sfixed", prefix);
  prefix = ", ";
 }

 if (info->flags & TEGRA_BPMP_CLK_IS_ROOT) {
  seq_buf_printf(&buf, "%sroot", prefix);
  prefix = ", ";
 }

 if (info->flags)
  seq_buf_printf(&buf, ")");

 dev_printk(level, bpmp->dev, "%03u: %s\n", info->id, info->name);
 dev_printk(level, bpmp->dev, "  flags: %lx %s\n", info->flags, flags);
 dev_printk(level, bpmp->dev, "  parents: %u\n", info->num_parents);

 for (i = 0; i < info->num_parents; i++)
  dev_printk(level, bpmp->dev, "    %03u\n", info->parents[i]);
}
