
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PVR_970 ;
 int PVR_970FX ;
 int PVR_970GX ;
 int PVR_970MP ;
 int PVR_POWER4 ;
 int PVR_POWER4p ;
 scalar_t__ pvr_version_is (int ) ;

__attribute__((used)) static inline int mmcra_must_set_sample(void)
{
 if (pvr_version_is(PVR_POWER4) || pvr_version_is(PVR_POWER4p) ||
     pvr_version_is(PVR_970) || pvr_version_is(PVR_970FX) ||
     pvr_version_is(PVR_970MP) || pvr_version_is(PVR_970GX))
  return 1;

 return 0;
}
