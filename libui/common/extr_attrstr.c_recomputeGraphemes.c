
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int len; int s; int * graphemes; int u16len; int u16; } ;
typedef TYPE_1__ uiAttributedString ;


 scalar_t__ uiprivGraphemesTakesUTF16 () ;
 void* uiprivNewGraphemes (int ,int ) ;

__attribute__((used)) static void recomputeGraphemes(uiAttributedString *s)
{
 if (s->graphemes != ((void*)0))
  return;
 if (uiprivGraphemesTakesUTF16()) {
  s->graphemes = uiprivNewGraphemes(s->u16, s->u16len);
  return;
 }
 s->graphemes = uiprivNewGraphemes(s->s, s->len);
}
