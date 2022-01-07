
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_9__ ;
typedef struct TYPE_19__ TYPE_8__ ;
typedef struct TYPE_18__ TYPE_7__ ;
typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int* vuip ;
struct pci_controller {scalar_t__ sysdata; int index; int sg_pci; } ;
struct io7_port {TYPE_8__* csrs; } ;
struct io7 {TYPE_1__* ports; } ;
struct TYPE_18__ {int csr; } ;
struct TYPE_14__ {int csr; } ;
struct TYPE_19__ {TYPE_7__ AGP_CMD; TYPE_3__ AGP_STAT; } ;
typedef TYPE_8__ io7_ioport_csrs ;
struct TYPE_17__ {int lw; } ;
struct TYPE_15__ {int rq; } ;
struct TYPE_16__ {TYPE_4__ bits; int lw; } ;
struct TYPE_13__ {int * sysdata; scalar_t__ size; scalar_t__ bus_base; } ;
struct TYPE_20__ {TYPE_6__ mode; TYPE_5__ capability; TYPE_2__ aperture; int * ops; int * private; struct pci_controller* hose; } ;
typedef TYPE_9__ alpha_agp_info ;
struct TYPE_12__ {struct pci_controller* hose; int enabled; } ;


 int GFP_KERNEL ;
 size_t IO7_AGP_PORT ;
 int PCI_DEVFN (int,int ) ;
 scalar_t__ build_conf_addr (struct pci_controller*,int ,int ,int ) ;
 TYPE_9__* kmalloc (int,int ) ;
 int marvel_agp_ops ;
 struct io7* marvel_next_io7 (struct io7*) ;
 int printk (char*,int ) ;

alpha_agp_info *
marvel_agp_info(void)
{
 struct pci_controller *hose;
 io7_ioport_csrs *csrs;
 alpha_agp_info *agp;
 struct io7 *io7;







 hose = ((void*)0);
 for (io7 = ((void*)0); (io7 = marvel_next_io7(io7)) != ((void*)0); ) {
  struct pci_controller *h;
  vuip addr;

  if (!io7->ports[IO7_AGP_PORT].enabled)
   continue;

  h = io7->ports[IO7_AGP_PORT].hose;
  addr = (vuip)build_conf_addr(h, 0, PCI_DEVFN(5, 0), 0);

  if (*addr != 0xffffffffu) {
   hose = h;
   break;
  }
 }

 if (!hose || !hose->sg_pci)
  return ((void*)0);

 printk("MARVEL - using hose %d as AGP\n", hose->index);




 csrs = ((struct io7_port *)hose->sysdata)->csrs;




 agp = kmalloc(sizeof(*agp), GFP_KERNEL);
 if (!agp)
  return ((void*)0);




 agp->hose = hose;
 agp->private = ((void*)0);
 agp->ops = &marvel_agp_ops;




 agp->aperture.bus_base = 0;
 agp->aperture.size = 0;
 agp->aperture.sysdata = ((void*)0);
 agp->capability.lw = csrs->AGP_STAT.csr;
 agp->capability.bits.rq = 0xf;




 agp->mode.lw = csrs->AGP_CMD.csr;

 return agp;
}
