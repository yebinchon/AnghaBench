
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int writeEndMark; } ;
typedef scalar_t__ CLzmaEncHandle ;
typedef TYPE_1__ CLzmaEnc ;



unsigned LzmaEnc_IsWriteEndMark(CLzmaEncHandle pp)
{
  return ((CLzmaEnc *)pp)->writeEndMark;
}
