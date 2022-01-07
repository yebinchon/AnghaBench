
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hci_dev {int dummy; } ;


 int EOPNOTSUPP ;

__attribute__((used)) static inline int btintel_send_intel_reset(struct hci_dev *hdev,
        u32 reset_param)
{
 return -EOPNOTSUPP;
}
