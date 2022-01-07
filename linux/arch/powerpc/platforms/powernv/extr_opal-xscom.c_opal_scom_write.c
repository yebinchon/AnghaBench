
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
typedef int uint32_t ;
typedef scalar_t__ u64 ;
typedef scalar_t__ int64_t ;


 int EIO ;
 scalar_t__ opal_scom_unmangle (scalar_t__) ;
 scalar_t__ opal_xscom_write (int ,scalar_t__,scalar_t__) ;

__attribute__((used)) static int opal_scom_write(uint32_t chip, uint64_t addr, u64 reg, u64 value)
{
 int64_t rc;

 reg = opal_scom_unmangle(addr + reg);
 rc = opal_xscom_write(chip, reg, value);
 if (rc)
  return -EIO;
 return 0;
}
