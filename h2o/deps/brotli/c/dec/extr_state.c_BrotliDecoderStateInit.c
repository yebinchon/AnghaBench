
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BrotliDecoderState ;


 int BrotliDecoderStateInitWithCustomAllocators (int *,int ,int ,int ) ;

void BrotliDecoderStateInit(BrotliDecoderState* s) {
  BrotliDecoderStateInitWithCustomAllocators(s, 0, 0, 0);
}
