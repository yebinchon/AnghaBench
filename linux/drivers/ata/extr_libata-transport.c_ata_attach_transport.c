
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int match; int ** attrs; int * class; } ;
struct TYPE_7__ {TYPE_1__ ac; } ;
struct scsi_transport_template {TYPE_2__ host_attrs; int user_scan; int eh_strategy_handler; } ;
struct ata_internal {struct scsi_transport_template t; int ** dev_attrs; int ** link_attrs; int ** port_attrs; TYPE_2__ dev_attr_cont; TYPE_2__ link_attr_cont; } ;
struct TYPE_10__ {int class; } ;
struct TYPE_9__ {int class; } ;
struct TYPE_8__ {int class; } ;


 int ATA_DEV_ATTRS ;
 int ATA_LINK_ATTRS ;
 int ATA_PORT_ATTRS ;
 int BUG_ON (int) ;
 int GFP_KERNEL ;
 int SETUP_DEV_ATTRIBUTE (int ) ;
 int SETUP_LINK_ATTRIBUTE (int ) ;
 int SETUP_PORT_ATTRIBUTE (int ) ;
 TYPE_5__ ata_dev_class ;
 TYPE_4__ ata_link_class ;
 TYPE_3__ ata_port_class ;
 int ata_scsi_error ;
 int ata_scsi_user_scan ;
 int ata_tdev_match ;
 int ata_tlink_match ;
 int ata_tport_match ;
 int class ;
 int dma_mode ;
 int ering ;
 int gscr ;
 int hw_sata_spd_limit ;
 int id ;
 int idle_irq ;
 struct ata_internal* kzalloc (int,int ) ;
 int nr_pmp_links ;
 int pio_mode ;
 int port_no ;
 int sata_spd ;
 int sata_spd_limit ;
 int spdn_cnt ;
 int transport_container_register (TYPE_2__*) ;
 int trim ;
 int xfer_mode ;

struct scsi_transport_template *ata_attach_transport(void)
{
 struct ata_internal *i;
 int count;

 i = kzalloc(sizeof(struct ata_internal), GFP_KERNEL);
 if (!i)
  return ((void*)0);

 i->t.eh_strategy_handler = ata_scsi_error;
 i->t.user_scan = ata_scsi_user_scan;

 i->t.host_attrs.ac.attrs = &i->port_attrs[0];
 i->t.host_attrs.ac.class = &ata_port_class.class;
 i->t.host_attrs.ac.match = ata_tport_match;
 transport_container_register(&i->t.host_attrs);

 i->link_attr_cont.ac.class = &ata_link_class.class;
 i->link_attr_cont.ac.attrs = &i->link_attrs[0];
 i->link_attr_cont.ac.match = ata_tlink_match;
 transport_container_register(&i->link_attr_cont);

 i->dev_attr_cont.ac.class = &ata_dev_class.class;
 i->dev_attr_cont.ac.attrs = &i->dev_attrs[0];
 i->dev_attr_cont.ac.match = ata_tdev_match;
 transport_container_register(&i->dev_attr_cont);

 count = 0;
 SETUP_PORT_ATTRIBUTE(nr_pmp_links);
 SETUP_PORT_ATTRIBUTE(idle_irq);
 SETUP_PORT_ATTRIBUTE(port_no);
 BUG_ON(count > ATA_PORT_ATTRS);
 i->port_attrs[count] = ((void*)0);

 count = 0;
 SETUP_LINK_ATTRIBUTE(hw_sata_spd_limit);
 SETUP_LINK_ATTRIBUTE(sata_spd_limit);
 SETUP_LINK_ATTRIBUTE(sata_spd);
 BUG_ON(count > ATA_LINK_ATTRS);
 i->link_attrs[count] = ((void*)0);

 count = 0;
 SETUP_DEV_ATTRIBUTE(class);
 SETUP_DEV_ATTRIBUTE(pio_mode);
 SETUP_DEV_ATTRIBUTE(dma_mode);
 SETUP_DEV_ATTRIBUTE(xfer_mode);
 SETUP_DEV_ATTRIBUTE(spdn_cnt);
 SETUP_DEV_ATTRIBUTE(ering);
 SETUP_DEV_ATTRIBUTE(id);
 SETUP_DEV_ATTRIBUTE(gscr);
 SETUP_DEV_ATTRIBUTE(trim);
 BUG_ON(count > ATA_DEV_ATTRS);
 i->dev_attrs[count] = ((void*)0);

 return &i->t;
}
