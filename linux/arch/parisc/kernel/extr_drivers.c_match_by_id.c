
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct parisc_device {scalar_t__ hw_path; } ;
struct match_id_data {scalar_t__ id; struct parisc_device* dev; } ;
struct device {int dummy; } ;


 struct parisc_device* to_parisc_device (struct device*) ;

__attribute__((used)) static int match_by_id(struct device * dev, void * data)
{
 struct parisc_device * pdev = to_parisc_device(dev);
 struct match_id_data * d = data;

 if (pdev->hw_path == d->id) {
  d->dev = pdev;
  return 1;
 }
 return 0;
}
