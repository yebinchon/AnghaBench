
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct brcmstb_gisb_arb_device {int dummy; } ;


 int ARB_ERR_CAP_ADDR ;
 int ARB_ERR_CAP_HI_ADDR ;
 int gisb_read (struct brcmstb_gisb_arb_device*,int ) ;

__attribute__((used)) static u64 gisb_read_address(struct brcmstb_gisb_arb_device *gdev)
{
 u64 value;

 value = gisb_read(gdev, ARB_ERR_CAP_ADDR);
 value |= (u64)gisb_read(gdev, ARB_ERR_CAP_HI_ADDR) << 32;

 return value;
}
