
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hci_dev {int dummy; } ;
typedef int bdaddr_t ;


 int EOPNOTSUPP ;

__attribute__((used)) static inline int qca_set_bdaddr_rome(struct hci_dev *hdev, const bdaddr_t *bdaddr)
{
 return -EOPNOTSUPP;
}
