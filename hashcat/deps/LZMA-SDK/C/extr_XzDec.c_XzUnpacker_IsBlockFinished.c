
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ state; scalar_t__ pos; } ;
typedef TYPE_1__ CXzUnpacker ;
typedef int BoolInt ;


 scalar_t__ XZ_STATE_BLOCK_HEADER ;

BoolInt XzUnpacker_IsBlockFinished(const CXzUnpacker *p)
{
  return (p->state == XZ_STATE_BLOCK_HEADER) && (p->pos == 0);
}
