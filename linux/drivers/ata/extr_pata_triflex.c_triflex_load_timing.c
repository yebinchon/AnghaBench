
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct pci_dev {int dummy; } ;
struct ata_port {scalar_t__ port_no; TYPE_1__* host; } ;
struct ata_device {scalar_t__ devno; } ;
struct TYPE_2__ {int dev; } ;


 int BUG () ;
 int pci_read_config_dword (struct pci_dev*,int,int*) ;
 int pci_write_config_dword (struct pci_dev*,int,int) ;
 struct pci_dev* to_pci_dev (int ) ;

__attribute__((used)) static void triflex_load_timing(struct ata_port *ap, struct ata_device *adev, int speed)
{
 struct pci_dev *pdev = to_pci_dev(ap->host->dev);
 u32 timing = 0;
 u32 triflex_timing, old_triflex_timing;
 int channel_offset = ap->port_no ? 0x74: 0x70;
 unsigned int is_slave = (adev->devno != 0);


 pci_read_config_dword(pdev, channel_offset, &old_triflex_timing);
 triflex_timing = old_triflex_timing;

 switch(speed)
 {
  case 136:
   timing = 0x0103;break;
  case 137:
   timing = 0x0203;break;
  case 138:
   timing = 0x0808;break;
  case 128:
  case 129:
  case 130:
   timing = 0x0F0F;break;
  case 131:
   timing = 0x0202;break;
  case 132:
   timing = 0x0204;break;
  case 133:
   timing = 0x0404;break;
  case 134:
   timing = 0x0508;break;
  case 135:
   timing = 0x0808;break;
  default:
   BUG();
 }
 triflex_timing &= ~ (0xFFFF << (16 * is_slave));
 triflex_timing |= (timing << (16 * is_slave));

 if (triflex_timing != old_triflex_timing)
  pci_write_config_dword(pdev, channel_offset, triflex_timing);
}
