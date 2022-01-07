
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btusb_data {int flags; } ;


 int BTUSB_BOOTLOADER ;
 int btusb_recv_bulk (struct btusb_data*,void*,int) ;
 int btusb_recv_intr (struct btusb_data*,void*,int) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static int btusb_recv_bulk_intel(struct btusb_data *data, void *buffer,
     int count)
{




 if (test_bit(BTUSB_BOOTLOADER, &data->flags))
  return btusb_recv_intr(data, buffer, count);

 return btusb_recv_bulk(data, buffer, count);
}
