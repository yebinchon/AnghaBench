
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hci_dev {int dummy; } ;


 int EOPNOTSUPP ;

__attribute__((used)) static inline int btintel_set_event_mask_mfg(struct hci_dev *hdev, bool debug)
{
 return -EOPNOTSUPP;
}
