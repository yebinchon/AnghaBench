
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int UInt64 ;
struct TYPE_2__ {int expectedDataSize; } ;
typedef scalar_t__ CLzmaEncHandle ;
typedef TYPE_1__ CLzma2Enc ;



void Lzma2Enc_SetDataSize(CLzmaEncHandle pp, UInt64 expectedDataSiize)
{
  CLzma2Enc *p = (CLzma2Enc *)pp;
  p->expectedDataSize = expectedDataSiize;
}
