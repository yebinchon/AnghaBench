
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ UInt64 ;
struct TYPE_5__ {void* allocBig; void* alloc; scalar_t__ expectedDataSize; int xzProps; } ;
typedef scalar_t__ Int64 ;
typedef void* ISzAllocPtr ;
typedef TYPE_1__* CXzEncHandle ;
typedef TYPE_1__ CXzEnc ;


 scalar_t__ ISzAlloc_Alloc (void*,int) ;
 int XzEnc_Construct (TYPE_1__*) ;
 int XzProps_Init (int *) ;
 int XzProps_Normalize (int *) ;

CXzEncHandle XzEnc_Create(ISzAllocPtr alloc, ISzAllocPtr allocBig)
{
  CXzEnc *p = (CXzEnc *)ISzAlloc_Alloc(alloc, sizeof(CXzEnc));
  if (!p)
    return ((void*)0);
  XzEnc_Construct(p);
  XzProps_Init(&p->xzProps);
  XzProps_Normalize(&p->xzProps);
  p->expectedDataSize = (UInt64)(Int64)-1;
  p->alloc = alloc;
  p->allocBig = allocBig;
  return p;
}
