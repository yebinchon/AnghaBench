
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct pnv_phb {int opal_id; } ;
struct pci_dev {int bus; } ;
struct pci_controller {struct pnv_phb* private_data; } ;
typedef int __be64 ;


 int EBUSY ;
 int EIO ;
 int ENXIO ;
 int EPERM ;
 int OPAL_PCI_GET_PBCQ_TUNNEL_BAR ;
 int OPAL_PCI_SET_PBCQ_TUNNEL_BAR ;
 int OPAL_SUCCESS ;
 int be64_to_cpu (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int opal_check_token (int ) ;
 int opal_error_code (int) ;
 int opal_pci_get_pbcq_tunnel_bar (int ,int *) ;
 int opal_pci_set_pbcq_tunnel_bar (int ,int) ;
 struct pci_controller* pci_bus_to_host (int ) ;
 int tunnel_mutex ;

int pnv_pci_set_tunnel_bar(struct pci_dev *dev, u64 addr, int enable)
{
 __be64 val;
 struct pci_controller *hose;
 struct pnv_phb *phb;
 u64 tunnel_bar;
 int rc;

 if (!opal_check_token(OPAL_PCI_GET_PBCQ_TUNNEL_BAR))
  return -ENXIO;
 if (!opal_check_token(OPAL_PCI_SET_PBCQ_TUNNEL_BAR))
  return -ENXIO;

 hose = pci_bus_to_host(dev->bus);
 phb = hose->private_data;

 mutex_lock(&tunnel_mutex);
 rc = opal_pci_get_pbcq_tunnel_bar(phb->opal_id, &val);
 if (rc != OPAL_SUCCESS) {
  rc = -EIO;
  goto out;
 }
 tunnel_bar = be64_to_cpu(val);
 if (enable) {




  if (tunnel_bar) {
   if (tunnel_bar != addr)
    rc = -EBUSY;
   else
    rc = 0;
   goto out;
  }
 } else {




  if (tunnel_bar != addr) {
   rc = -EPERM;
   goto out;
  }
  addr = 0x0ULL;
 }
 rc = opal_pci_set_pbcq_tunnel_bar(phb->opal_id, addr);
 rc = opal_error_code(rc);
out:
 mutex_unlock(&tunnel_mutex);
 return rc;
}
