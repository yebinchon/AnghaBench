
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rpi_firmware {int dummy; } ;
struct raspberrypi_firmware_prop {int val; int disable_turbo; int id; } ;
typedef int msg ;


 int cpu_to_le32 (int) ;
 int le32_to_cpu (int ) ;
 int rpi_firmware_property (struct rpi_firmware*,int,struct raspberrypi_firmware_prop*,int) ;

__attribute__((used)) static int raspberrypi_clock_property(struct rpi_firmware *firmware, u32 tag,
          u32 clk, u32 *val)
{
 struct raspberrypi_firmware_prop msg = {
  .id = cpu_to_le32(clk),
  .val = cpu_to_le32(*val),
  .disable_turbo = cpu_to_le32(1),
 };
 int ret;

 ret = rpi_firmware_property(firmware, tag, &msg, sizeof(msg));
 if (ret)
  return ret;

 *val = le32_to_cpu(msg.val);

 return 0;
}
