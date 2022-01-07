
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hci_dev {int dummy; } ;
struct firmware {int dummy; } ;


 int EOPNOTSUPP ;

__attribute__((used)) static inline int btbcm_patchram(struct hci_dev *hdev, const struct firmware *fw)
{
 return -EOPNOTSUPP;
}
