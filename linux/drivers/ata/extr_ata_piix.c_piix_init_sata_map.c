
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
struct piix_map_db {int** map; size_t mask; } ;
struct pci_dev {int dev; } ;
struct ata_port_info {int flags; } ;
typedef int buf ;


 int ATA_FLAG_SLAVE_POSS ;
 int ICH5_PMR ;



 int WARN_ON (int) ;
 int dev_err (int *,char*,size_t) ;
 int dev_info (int *,char*,char*) ;
 size_t ich_pata_100 ;
 int pci_read_config_byte (struct pci_dev*,int ,size_t*) ;
 struct ata_port_info* piix_port_info ;
 int scnprintf (char*,int,char*,...) ;

__attribute__((used)) static const int *piix_init_sata_map(struct pci_dev *pdev,
         struct ata_port_info *pinfo,
         const struct piix_map_db *map_db)
{
 const int *map;
 int i, invalid_map = 0;
 u8 map_value;
 char buf[32];
 char *p = buf, *end = buf + sizeof(buf);

 pci_read_config_byte(pdev, ICH5_PMR, &map_value);

 map = map_db->map[map_value & map_db->mask];

 for (i = 0; i < 4; i++) {
  switch (map[i]) {
  case 128:
   invalid_map = 1;
   p += scnprintf(p, end - p, " XX");
   break;

  case 129:
   p += scnprintf(p, end - p, " --");
   break;

  case 130:
   WARN_ON((i & 1) || map[i + 1] != 130);
   pinfo[i / 2] = piix_port_info[ich_pata_100];
   i++;
   p += scnprintf(p, end - p, " IDE IDE");
   break;

  default:
   p += scnprintf(p, end - p, " P%d", map[i]);
   if (i & 1)
    pinfo[i / 2].flags |= ATA_FLAG_SLAVE_POSS;
   break;
  }
 }
 dev_info(&pdev->dev, "MAP [%s ]\n", buf);

 if (invalid_map)
  dev_err(&pdev->dev, "invalid MAP value %u\n", map_value);

 return map;
}
