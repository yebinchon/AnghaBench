
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct imr_regs {int wmask; int rmask; int addr_hi; int addr_lo; } ;
struct imr_device {int reg_base; } ;


 int IMR_NUM_REGS ;
 int MBI_REG_READ ;
 int QRK_MBI_UNIT_MM ;
 int iosf_mbi_read (int ,int ,int ,int *) ;

__attribute__((used)) static int imr_read(struct imr_device *idev, u32 imr_id, struct imr_regs *imr)
{
 u32 reg = imr_id * IMR_NUM_REGS + idev->reg_base;
 int ret;

 ret = iosf_mbi_read(QRK_MBI_UNIT_MM, MBI_REG_READ, reg++, &imr->addr_lo);
 if (ret)
  return ret;

 ret = iosf_mbi_read(QRK_MBI_UNIT_MM, MBI_REG_READ, reg++, &imr->addr_hi);
 if (ret)
  return ret;

 ret = iosf_mbi_read(QRK_MBI_UNIT_MM, MBI_REG_READ, reg++, &imr->rmask);
 if (ret)
  return ret;

 return iosf_mbi_read(QRK_MBI_UNIT_MM, MBI_REG_READ, reg++, &imr->wmask);
}
