
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hci_dev {int dummy; } ;
struct btrtl_device_info {int dummy; } ;


 int EOPNOTSUPP ;
 struct btrtl_device_info* ERR_PTR (int ) ;

__attribute__((used)) static inline struct btrtl_device_info *btrtl_initialize(struct hci_dev *hdev,
        const char *postfix)
{
 return ERR_PTR(-EOPNOTSUPP);
}
