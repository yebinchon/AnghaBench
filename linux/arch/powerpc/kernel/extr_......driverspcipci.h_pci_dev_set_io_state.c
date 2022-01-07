
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int error_state; int dev; } ;
typedef int pci_channel_state_t ;


 int device_lock_assert (int *) ;




__attribute__((used)) static inline bool pci_dev_set_io_state(struct pci_dev *dev,
     pci_channel_state_t new)
{
 bool changed = 0;

 device_lock_assert(&dev->dev);
 switch (new) {
 case 128:
  switch (dev->error_state) {
  case 130:
  case 129:
  case 128:
   changed = 1;
   break;
  }
  break;
 case 130:
  switch (dev->error_state) {
  case 130:
  case 129:
   changed = 1;
   break;
  }
  break;
 case 129:
  switch (dev->error_state) {
  case 130:
  case 129:
   changed = 1;
   break;
  }
  break;
 }
 if (changed)
  dev->error_state = new;
 return changed;
}
