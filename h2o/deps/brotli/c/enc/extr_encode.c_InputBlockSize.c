
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {size_t lgblock; } ;
struct TYPE_6__ {TYPE_1__ params; } ;
typedef TYPE_2__ BrotliEncoderState ;


 int EnsureInitialized (TYPE_2__*) ;

__attribute__((used)) static size_t InputBlockSize(BrotliEncoderState* s) {
  if (!EnsureInitialized(s)) return 0;
  return (size_t)1 << s->params.lgblock;
}
