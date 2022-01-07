
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct regmap {int dummy; } ;
struct hci_dev {int dummy; } ;


 int EINVAL ;
 struct regmap* ERR_PTR (int ) ;

__attribute__((used)) static inline struct regmap *btintel_regmap_init(struct hci_dev *hdev,
       u16 opcode_read,
       u16 opcode_write)
{
 return ERR_PTR(-EINVAL);
}
