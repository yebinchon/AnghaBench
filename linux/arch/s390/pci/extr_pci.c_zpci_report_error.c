
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zpci_report_error_header {int dummy; } ;
struct zpci_dev {int fid; int fh; } ;
struct pci_dev {int dummy; } ;


 int sclp_pci_report (struct zpci_report_error_header*,int ,int ) ;
 struct zpci_dev* to_zpci (struct pci_dev*) ;

int zpci_report_error(struct pci_dev *pdev,
        struct zpci_report_error_header *report)
{
 struct zpci_dev *zdev = to_zpci(pdev);

 return sclp_pci_report(report, zdev->fh, zdev->fid);
}
