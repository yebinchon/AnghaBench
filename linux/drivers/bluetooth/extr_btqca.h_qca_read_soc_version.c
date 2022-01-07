
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hci_dev {int dummy; } ;


 int EOPNOTSUPP ;

__attribute__((used)) static inline int qca_read_soc_version(struct hci_dev *hdev, u32 *soc_version)
{
 return -EOPNOTSUPP;
}
