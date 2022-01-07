
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t num; size_t numAllocated; int * streams; } ;
typedef int ISzAllocPtr ;
typedef TYPE_1__ CXzs ;


 int ISzAlloc_Free (int ,int *) ;
 int Xz_Free (int *,int ) ;

void Xzs_Free(CXzs *p, ISzAllocPtr alloc)
{
  size_t i;
  for (i = 0; i < p->num; i++)
    Xz_Free(&p->streams[i], alloc);
  ISzAlloc_Free(alloc, p->streams);
  p->num = p->numAllocated = 0;
  p->streams = 0;
}
