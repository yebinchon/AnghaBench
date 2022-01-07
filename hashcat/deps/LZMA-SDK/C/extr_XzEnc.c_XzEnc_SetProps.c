
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int xzProps; } ;
typedef int SRes ;
typedef int CXzProps ;
typedef scalar_t__ CXzEncHandle ;
typedef TYPE_1__ CXzEnc ;


 int SZ_OK ;
 int XzProps_Normalize (int *) ;

SRes XzEnc_SetProps(CXzEncHandle pp, const CXzProps *props)
{
  CXzEnc *p = (CXzEnc *)pp;
  p->xzProps = *props;
  XzProps_Normalize(&p->xzProps);
  return SZ_OK;
}
