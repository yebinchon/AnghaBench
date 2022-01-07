
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hci_dev {int dummy; } ;
typedef int bdaddr_t ;


 int INDEX_BDADDR ;
 int OP_WRITE_TAG ;
 int ath_vendor_cmd (struct hci_dev*,int ,int ,int const*,int) ;

__attribute__((used)) static int ath_set_bdaddr(struct hci_dev *hdev, const bdaddr_t *bdaddr)
{
 return ath_vendor_cmd(hdev, OP_WRITE_TAG, INDEX_BDADDR, bdaddr,
         sizeof(*bdaddr));
}
