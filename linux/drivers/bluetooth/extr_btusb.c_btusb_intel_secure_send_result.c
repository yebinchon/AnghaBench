
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_secure_send_result {scalar_t__ result; } ;
struct btusb_data {int flags; } ;


 int BTUSB_DOWNLOADING ;
 int BTUSB_FIRMWARE_FAILED ;
 int BTUSB_FIRMWARE_LOADED ;
 int set_bit (int ,int *) ;
 scalar_t__ test_and_clear_bit (int ,int *) ;
 scalar_t__ test_bit (int ,int *) ;
 int wake_up_bit (int *,int ) ;

__attribute__((used)) static void btusb_intel_secure_send_result(struct btusb_data *data,
        const void *ptr, unsigned int len)
{
 const struct intel_secure_send_result *evt = ptr;

 if (len != sizeof(*evt))
  return;

 if (evt->result)
  set_bit(BTUSB_FIRMWARE_FAILED, &data->flags);

 if (test_and_clear_bit(BTUSB_DOWNLOADING, &data->flags) &&
     test_bit(BTUSB_FIRMWARE_LOADED, &data->flags))
  wake_up_bit(&data->flags, BTUSB_DOWNLOADING);
}
