
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hci_dev {int dummy; } ;
struct btrtl_device_info {int dummy; } ;


 int EOPNOTSUPP ;

__attribute__((used)) static inline int btrtl_download_firmware(struct hci_dev *hdev,
       struct btrtl_device_info *btrtl_dev)
{
 return -EOPNOTSUPP;
}
