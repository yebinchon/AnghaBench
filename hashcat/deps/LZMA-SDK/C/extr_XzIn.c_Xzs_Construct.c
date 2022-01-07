
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ streams; scalar_t__ numAllocated; scalar_t__ num; } ;
typedef TYPE_1__ CXzs ;



void Xzs_Construct(CXzs *p)
{
  p->num = p->numAllocated = 0;
  p->streams = 0;
}
