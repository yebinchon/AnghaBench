
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int UInt64 ;
struct TYPE_2__ {int expectedDataSize; } ;
typedef scalar_t__ CXzEncHandle ;
typedef TYPE_1__ CXzEnc ;



void XzEnc_SetDataSize(CXzEncHandle pp, UInt64 expectedDataSiize)
{
  CXzEnc *p = (CXzEnc *)pp;
  p->expectedDataSize = expectedDataSiize;
}
