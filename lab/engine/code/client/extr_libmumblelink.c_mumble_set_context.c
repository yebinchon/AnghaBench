
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {size_t context_len; int context; } ;


 size_t MIN (int,size_t) ;
 TYPE_1__* lm ;
 int memcpy (int ,unsigned char const*,size_t) ;

void mumble_set_context(const unsigned char* context, size_t len)
{
 if (!lm)
  return;
 len = MIN(sizeof(lm->context), len);
 lm->context_len = len;
 memcpy(lm->context, context, len);
}
