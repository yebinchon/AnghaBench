
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_device_id {int dummy; } ;
struct pci_dev {int dev; } ;
struct cavium_rng_pf {int control_status; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int THUNDERX_RNM_ENT_EN ;
 int THUNDERX_RNM_RNG_EN ;
 int dev_err (int *,char*,...) ;
 struct cavium_rng_pf* devm_kzalloc (int *,int,int ) ;
 int pci_enable_sriov (struct pci_dev*,int) ;
 int pci_set_drvdata (struct pci_dev*,struct cavium_rng_pf*) ;
 int pcim_iomap (struct pci_dev*,int ,int ) ;
 int writeq (int,int ) ;

__attribute__((used)) static int cavium_rng_probe(struct pci_dev *pdev,
   const struct pci_device_id *id)
{
 struct cavium_rng_pf *rng;
 int iov_err;

 rng = devm_kzalloc(&pdev->dev, sizeof(*rng), GFP_KERNEL);
 if (!rng)
  return -ENOMEM;


 rng->control_status = pcim_iomap(pdev, 0, 0);
 if (!rng->control_status) {
  dev_err(&pdev->dev,
   "Error iomap failed retrieving control_status.\n");
  return -ENOMEM;
 }


 writeq(THUNDERX_RNM_RNG_EN | THUNDERX_RNM_ENT_EN,
  rng->control_status);

 pci_set_drvdata(pdev, rng);


 iov_err = pci_enable_sriov(pdev, 1);
 if (iov_err != 0) {

  writeq(0, rng->control_status);
  dev_err(&pdev->dev,
   "Error initializing RNG virtual function,(%i).\n",
   iov_err);
  return iov_err;
 }

 return 0;
}
