
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int tx_oe; int output_sel; } ;
union cvmx_gpio_bit_cfgx {void* u64; TYPE_1__ s; } ;
struct TYPE_4__ {int ppc_en; int ppc_active_high_en; } ;
union cvm_usbdrd_uctl_host_cfg {void* u64; TYPE_2__ s; } ;
typedef int uint32_t ;
typedef int u64 ;
struct device_node {int dummy; } ;
struct device {struct device_node* of_node; } ;


 scalar_t__ CVMX_GPIO_BIT_CFGX (int) ;
 scalar_t__ CVMX_GPIO_XBIT_CFGX (int) ;
 int EINVAL ;
 int OCTEON_CN73XX ;
 int OCTEON_CNF75XX ;
 scalar_t__ OCTEON_IS_MODEL (int ) ;
 scalar_t__ UCTL_HOST_CFG ;
 void* cvmx_read_csr (scalar_t__) ;
 int cvmx_write_csr (scalar_t__,void*) ;
 int dev_err (struct device*,char*) ;
 int dev_warn (struct device*,char*) ;
 int * of_find_property (struct device_node*,char*,int*) ;
 int of_property_read_u32_array (struct device_node*,char*,int*,int) ;

__attribute__((used)) static int dwc3_octeon_config_power(struct device *dev, u64 base)
{

 union cvm_usbdrd_uctl_host_cfg uctl_host_cfg;
 union cvmx_gpio_bit_cfgx gpio_bit;
 uint32_t gpio_pwr[3];
 int gpio, len, power_active_low;
 struct device_node *node = dev->of_node;
 int index = (base >> 24) & 1;

 if (of_find_property(node, "power", &len) != ((void*)0)) {
  if (len == 12) {
   of_property_read_u32_array(node, "power", gpio_pwr, 3);
   power_active_low = gpio_pwr[2] & 0x01;
   gpio = gpio_pwr[1];
  } else if (len == 8) {
   of_property_read_u32_array(node, "power", gpio_pwr, 2);
   power_active_low = 0;
   gpio = gpio_pwr[1];
  } else {
   dev_err(dev, "dwc3 controller clock init failure.\n");
   return -EINVAL;
  }
  if ((OCTEON_IS_MODEL(OCTEON_CN73XX) ||
      OCTEON_IS_MODEL(OCTEON_CNF75XX))
      && gpio <= 31) {
   gpio_bit.u64 = cvmx_read_csr(CVMX_GPIO_BIT_CFGX(gpio));
   gpio_bit.s.tx_oe = 1;
   gpio_bit.s.output_sel = (index == 0 ? 0x14 : 0x15);
   cvmx_write_csr(CVMX_GPIO_BIT_CFGX(gpio), gpio_bit.u64);
  } else if (gpio <= 15) {
   gpio_bit.u64 = cvmx_read_csr(CVMX_GPIO_BIT_CFGX(gpio));
   gpio_bit.s.tx_oe = 1;
   gpio_bit.s.output_sel = (index == 0 ? 0x14 : 0x19);
   cvmx_write_csr(CVMX_GPIO_BIT_CFGX(gpio), gpio_bit.u64);
  } else {
   gpio_bit.u64 = cvmx_read_csr(CVMX_GPIO_XBIT_CFGX(gpio));
   gpio_bit.s.tx_oe = 1;
   gpio_bit.s.output_sel = (index == 0 ? 0x14 : 0x19);
   cvmx_write_csr(CVMX_GPIO_XBIT_CFGX(gpio), gpio_bit.u64);
  }


  uctl_host_cfg.u64 = cvmx_read_csr(base + 0xe0);
  uctl_host_cfg.s.ppc_en = 1;
  uctl_host_cfg.s.ppc_active_high_en = !power_active_low;
  cvmx_write_csr(base + 0xe0, uctl_host_cfg.u64);
 } else {

  uctl_host_cfg.u64 = cvmx_read_csr(base + 0xe0);
  uctl_host_cfg.s.ppc_en = 0;
  uctl_host_cfg.s.ppc_active_high_en = 0;
  cvmx_write_csr(base + 0xe0, uctl_host_cfg.u64);
  dev_warn(dev, "dwc3 controller clock init failure.\n");
 }
 return 0;
}
