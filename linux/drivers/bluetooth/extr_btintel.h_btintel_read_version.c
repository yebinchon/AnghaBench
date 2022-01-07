
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_version {int dummy; } ;
struct hci_dev {int dummy; } ;


 int EOPNOTSUPP ;

__attribute__((used)) static inline int btintel_read_version(struct hci_dev *hdev,
           struct intel_version *ver)
{
 return -EOPNOTSUPP;
}
