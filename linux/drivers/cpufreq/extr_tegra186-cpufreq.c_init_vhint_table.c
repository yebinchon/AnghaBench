
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef scalar_t__ u16 ;
struct TYPE_2__ {int size; struct tegra_bpmp_message* data; } ;
struct tegra_bpmp_message {unsigned int cluster_id; TYPE_1__ tx; int mrq; int addr; } ;
struct tegra_bpmp {int dev; } ;
struct platform_device {int dev; } ;
struct mrq_cpu_vhint_request {unsigned int cluster_id; TYPE_1__ tx; int mrq; int addr; } ;
struct cpufreq_frequency_table {int driver_data; scalar_t__ frequency; } ;
struct cpu_vhint_data {int vfloor; int vceil; scalar_t__* ndiv; scalar_t__ ndiv_min; scalar_t__ ndiv_max; scalar_t__ ref_clk_hz; scalar_t__ pdiv; scalar_t__ mdiv; } ;
typedef int req ;
typedef int msg ;
typedef int dma_addr_t ;


 scalar_t__ CPUFREQ_TABLE_END ;
 scalar_t__ EDVD_CORE_VOLT_FREQ_F_SHIFT ;
 int EDVD_CORE_VOLT_FREQ_V_SHIFT ;
 int ENOMEM ;
 struct cpufreq_frequency_table* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int MRQ_CPU_VHINT ;
 struct cpufreq_frequency_table* devm_kcalloc (int *,int,int,int ) ;
 void* dma_alloc_coherent (int ,int,int *,int ) ;
 int dma_free_coherent (int ,int,void*,int ) ;
 int memset (struct tegra_bpmp_message*,int ,int) ;
 int tegra_bpmp_transfer (struct tegra_bpmp*,struct tegra_bpmp_message*) ;

__attribute__((used)) static struct cpufreq_frequency_table *init_vhint_table(
 struct platform_device *pdev, struct tegra_bpmp *bpmp,
 unsigned int cluster_id)
{
 struct cpufreq_frequency_table *table;
 struct mrq_cpu_vhint_request req;
 struct tegra_bpmp_message msg;
 struct cpu_vhint_data *data;
 int err, i, j, num_rates = 0;
 dma_addr_t phys;
 void *virt;

 virt = dma_alloc_coherent(bpmp->dev, sizeof(*data), &phys,
      GFP_KERNEL);
 if (!virt)
  return ERR_PTR(-ENOMEM);

 data = (struct cpu_vhint_data *)virt;

 memset(&req, 0, sizeof(req));
 req.addr = phys;
 req.cluster_id = cluster_id;

 memset(&msg, 0, sizeof(msg));
 msg.mrq = MRQ_CPU_VHINT;
 msg.tx.data = &req;
 msg.tx.size = sizeof(req);

 err = tegra_bpmp_transfer(bpmp, &msg);
 if (err) {
  table = ERR_PTR(err);
  goto free;
 }

 for (i = data->vfloor; i <= data->vceil; i++) {
  u16 ndiv = data->ndiv[i];

  if (ndiv < data->ndiv_min || ndiv > data->ndiv_max)
   continue;


  if (i > 0 && ndiv == data->ndiv[i - 1])
   continue;

  num_rates++;
 }

 table = devm_kcalloc(&pdev->dev, num_rates + 1, sizeof(*table),
        GFP_KERNEL);
 if (!table) {
  table = ERR_PTR(-ENOMEM);
  goto free;
 }

 for (i = data->vfloor, j = 0; i <= data->vceil; i++) {
  struct cpufreq_frequency_table *point;
  u16 ndiv = data->ndiv[i];
  u32 edvd_val = 0;

  if (ndiv < data->ndiv_min || ndiv > data->ndiv_max)
   continue;


  if (i > 0 && ndiv == data->ndiv[i - 1])
   continue;

  edvd_val |= i << EDVD_CORE_VOLT_FREQ_V_SHIFT;
  edvd_val |= ndiv << EDVD_CORE_VOLT_FREQ_F_SHIFT;

  point = &table[j++];
  point->driver_data = edvd_val;
  point->frequency = data->ref_clk_hz * ndiv / data->pdiv /
   data->mdiv / 1000;
 }

 table[j].frequency = CPUFREQ_TABLE_END;

free:
 dma_free_coherent(bpmp->dev, sizeof(*data), virt, phys);

 return table;
}
