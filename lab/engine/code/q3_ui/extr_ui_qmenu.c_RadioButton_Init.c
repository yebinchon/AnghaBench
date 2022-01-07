
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ y; scalar_t__ bottom; scalar_t__ top; scalar_t__ x; scalar_t__ right; scalar_t__ left; scalar_t__ name; } ;
struct TYPE_5__ {TYPE_1__ generic; } ;
typedef TYPE_2__ menuradiobutton_s ;


 scalar_t__ SMALLCHAR_HEIGHT ;
 int SMALLCHAR_WIDTH ;
 int strlen (scalar_t__) ;

__attribute__((used)) static void RadioButton_Init( menuradiobutton_s *rb )
{
 int len;


 if (rb->generic.name)
  len = strlen(rb->generic.name);
 else
  len = 0;

 rb->generic.left = rb->generic.x - (len+1)*SMALLCHAR_WIDTH;
 rb->generic.right = rb->generic.x + 6*SMALLCHAR_WIDTH;
 rb->generic.top = rb->generic.y;
 rb->generic.bottom = rb->generic.y + SMALLCHAR_HEIGHT;
}
