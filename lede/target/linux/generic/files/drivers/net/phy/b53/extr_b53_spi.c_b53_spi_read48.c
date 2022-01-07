
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u64 ;
struct b53_device {int dummy; } ;


 int b53_spi_read (struct b53_device*,int ,int ,int *,int) ;
 scalar_t__ le64_to_cpu (scalar_t__) ;

__attribute__((used)) static int b53_spi_read48(struct b53_device *dev, u8 page, u8 reg, u64 *val)
{
 int ret;

 *val = 0;
 ret = b53_spi_read(dev, page, reg, (u8 *)val, 6);
 if (!ret)
  *val = le64_to_cpu(*val);

 return ret;
}
