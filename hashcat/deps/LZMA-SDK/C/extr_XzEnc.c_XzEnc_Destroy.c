
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int alloc; } ;
typedef scalar_t__ CXzEncHandle ;
typedef TYPE_1__ CXzEnc ;


 int ISzAlloc_Free (int ,TYPE_1__*) ;
 int XzEnc_Free (TYPE_1__*,int ) ;

void XzEnc_Destroy(CXzEncHandle pp)
{
  CXzEnc *p = (CXzEnc *)pp;
  XzEnc_Free(p, p->alloc);
  ISzAlloc_Free(p->alloc, p);
}
