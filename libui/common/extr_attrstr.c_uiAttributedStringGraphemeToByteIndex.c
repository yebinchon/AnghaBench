
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {size_t* u16tou8; TYPE_1__* graphemes; } ;
typedef TYPE_2__ uiAttributedString ;
struct TYPE_5__ {size_t* graphemesToPoints; } ;


 int recomputeGraphemes (TYPE_2__*) ;
 scalar_t__ uiprivGraphemesTakesUTF16 () ;

size_t uiAttributedStringGraphemeToByteIndex(uiAttributedString *s, size_t pos)
{
 recomputeGraphemes(s);
 pos = s->graphemes->graphemesToPoints[pos];
 if (uiprivGraphemesTakesUTF16())
  pos = s->u16tou8[pos];
 return pos;
}
