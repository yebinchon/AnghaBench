
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {TYPE_2__* graphemes; } ;
typedef TYPE_1__ uiAttributedString ;
struct TYPE_5__ {struct TYPE_5__* graphemesToPoints; struct TYPE_5__* pointsToGraphemes; } ;


 int uiprivFree (TYPE_2__*) ;

__attribute__((used)) static void invalidateGraphemes(uiAttributedString *s)
{
 if (s->graphemes == ((void*)0))
  return;
 uiprivFree(s->graphemes->pointsToGraphemes);
 uiprivFree(s->graphemes->graphemesToPoints);
 uiprivFree(s->graphemes);
 s->graphemes = ((void*)0);
}
