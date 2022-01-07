
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
typedef scalar_t__ s64 ;


 scalar_t__ XIVE_INVALID_VP ;
 scalar_t__ opal_xive_free_vp_block (scalar_t__) ;
 int pr_warn (char*,scalar_t__) ;

void xive_native_free_vp_block(u32 vp_base)
{
 s64 rc;

 if (vp_base == XIVE_INVALID_VP)
  return;

 rc = opal_xive_free_vp_block(vp_base);
 if (rc < 0)
  pr_warn("OPAL error %lld freeing VP block\n", rc);
}
