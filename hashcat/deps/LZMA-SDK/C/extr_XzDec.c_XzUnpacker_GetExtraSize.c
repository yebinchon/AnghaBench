
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ UInt64 ;
struct TYPE_3__ {scalar_t__ state; scalar_t__ pos; scalar_t__ padSize; } ;
typedef TYPE_1__ CXzUnpacker ;


 scalar_t__ XZ_STATE_STREAM_HEADER ;
 scalar_t__ XZ_STATE_STREAM_PADDING ;

UInt64 XzUnpacker_GetExtraSize(const CXzUnpacker *p)
{
  UInt64 num = 0;
  if (p->state == XZ_STATE_STREAM_PADDING)
    num = p->padSize;
  else if (p->state == XZ_STATE_STREAM_HEADER)
    num = p->padSize + p->pos;
  return num;
}
