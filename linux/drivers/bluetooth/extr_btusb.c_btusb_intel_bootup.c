
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_bootup {int dummy; } ;
struct btusb_data {int flags; } ;


 int BTUSB_BOOTING ;
 scalar_t__ test_and_clear_bit (int ,int *) ;
 int wake_up_bit (int *,int ) ;

__attribute__((used)) static void btusb_intel_bootup(struct btusb_data *data, const void *ptr,
          unsigned int len)
{
 const struct intel_bootup *evt = ptr;

 if (len != sizeof(*evt))
  return;

 if (test_and_clear_bit(BTUSB_BOOTING, &data->flags))
  wake_up_bit(&data->flags, BTUSB_BOOTING);
}
