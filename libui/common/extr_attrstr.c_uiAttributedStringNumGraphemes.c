
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* graphemes; } ;
typedef TYPE_2__ uiAttributedString ;
struct TYPE_5__ {size_t len; } ;


 int recomputeGraphemes (TYPE_2__*) ;

size_t uiAttributedStringNumGraphemes(uiAttributedString *s)
{
 recomputeGraphemes(s);
 return s->graphemes->len;
}
