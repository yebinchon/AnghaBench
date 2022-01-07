
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {size_t* u8tou16; TYPE_1__* graphemes; } ;
typedef TYPE_2__ uiAttributedString ;
struct TYPE_5__ {size_t* pointsToGraphemes; } ;


 int recomputeGraphemes (TYPE_2__*) ;
 scalar_t__ uiprivGraphemesTakesUTF16 () ;

size_t uiAttributedStringByteIndexToGrapheme(uiAttributedString *s, size_t pos)
{
 recomputeGraphemes(s);
 if (uiprivGraphemesTakesUTF16())
  pos = s->u8tou16[pos];
 return s->graphemes->pointsToGraphemes[pos];
}
