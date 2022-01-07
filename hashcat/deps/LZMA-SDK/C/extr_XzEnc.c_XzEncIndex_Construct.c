
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * blocks; scalar_t__ allocated; scalar_t__ size; scalar_t__ numBlocks; } ;
typedef TYPE_1__ CXzEncIndex ;



__attribute__((used)) static void XzEncIndex_Construct(CXzEncIndex *p)
{
  p->numBlocks = 0;
  p->size = 0;
  p->allocated = 0;
  p->blocks = ((void*)0);
}
