
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hci_dev {int dummy; } ;
struct firmware {int dummy; } ;


 int EOPNOTSUPP ;

__attribute__((used)) static inline int btintel_download_firmware(struct hci_dev *dev,
         const struct firmware *fw,
         u32 *boot_param)
{
 return -EOPNOTSUPP;
}
