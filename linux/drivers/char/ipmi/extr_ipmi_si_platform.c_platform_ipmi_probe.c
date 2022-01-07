
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct si_sm_io {int slave_addr; scalar_t__ irq; scalar_t__ addr_space; int regspacing; scalar_t__ regsize; int addr_data; int * dev; int irq_setup; scalar_t__ regshift; scalar_t__ si_type; scalar_t__ addr_source; } ;
struct platform_device {int dev; } ;
typedef int io ;


 scalar_t__ DEFAULT_REGSIZE ;
 int EINVAL ;
 int ENODEV ;
 scalar_t__ IPMI_IO_ADDR_SPACE ;

 scalar_t__ SI_HARDCODED ;

 scalar_t__ SI_LAST ;
 scalar_t__ SI_PLATFORM ;
 scalar_t__ SI_SMBIOS ;


 int dev_err (int *,char*) ;
 int dev_info (int *,char*,int ) ;
 int device_property_read_u8 (int *,char*,scalar_t__*) ;
 int ipmi_addr_src_to_str (scalar_t__) ;
 int ipmi_get_info_from_resources (struct platform_device*,struct si_sm_io*) ;
 int ipmi_si_add_smi (struct si_sm_io*) ;
 int ipmi_std_irq_setup ;
 int memset (struct si_sm_io*,int ,int) ;
 scalar_t__ platform_get_irq (struct platform_device*,int ) ;
 int pr_info (char*,int ,char*,int ,scalar_t__,int ,scalar_t__) ;
 int si_trydmi ;
 int si_tryplatform ;

__attribute__((used)) static int platform_ipmi_probe(struct platform_device *pdev)
{
 struct si_sm_io io;
 u8 type, slave_addr, addr_source, regsize, regshift;
 int rv;

 rv = device_property_read_u8(&pdev->dev, "addr-source", &addr_source);
 if (rv)
  addr_source = SI_PLATFORM;
 if (addr_source >= SI_LAST)
  return -EINVAL;

 if (addr_source == SI_SMBIOS) {
  if (!si_trydmi)
   return -ENODEV;
 } else if (addr_source != SI_HARDCODED) {
  if (!si_tryplatform)
   return -ENODEV;
 }

 rv = device_property_read_u8(&pdev->dev, "ipmi-type", &type);
 if (rv)
  return -ENODEV;

 memset(&io, 0, sizeof(io));
 io.addr_source = addr_source;
 dev_info(&pdev->dev, "probing via %s\n",
   ipmi_addr_src_to_str(addr_source));

 switch (type) {
 case 130:
 case 129:
 case 131:
  io.si_type = type;
  break;
 case 128:
  return -ENODEV;
 default:
  dev_err(&pdev->dev, "ipmi-type property is invalid\n");
  return -EINVAL;
 }

 io.regsize = DEFAULT_REGSIZE;
 rv = device_property_read_u8(&pdev->dev, "reg-size", &regsize);
 if (!rv)
  io.regsize = regsize;

 io.regshift = 0;
 rv = device_property_read_u8(&pdev->dev, "reg-shift", &regshift);
 if (!rv)
  io.regshift = regshift;

 if (!ipmi_get_info_from_resources(pdev, &io))
  return -EINVAL;

 rv = device_property_read_u8(&pdev->dev, "slave-addr", &slave_addr);
 if (rv)
  io.slave_addr = 0x20;
 else
  io.slave_addr = slave_addr;

 io.irq = platform_get_irq(pdev, 0);
 if (io.irq > 0)
  io.irq_setup = ipmi_std_irq_setup;
 else
  io.irq = 0;

 io.dev = &pdev->dev;

 pr_info("ipmi_si: %s: %s %#lx regsize %d spacing %d irq %d\n",
  ipmi_addr_src_to_str(addr_source),
  (io.addr_space == IPMI_IO_ADDR_SPACE) ? "io" : "mem",
  io.addr_data, io.regsize, io.regspacing, io.irq);

 ipmi_si_add_smi(&io);

 return 0;
}
