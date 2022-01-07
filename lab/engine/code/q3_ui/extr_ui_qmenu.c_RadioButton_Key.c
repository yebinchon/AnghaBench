
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int sfxHandle_t ;
struct TYPE_5__ {int flags; int (* callback ) (TYPE_2__*,int ) ;} ;
struct TYPE_6__ {int curvalue; TYPE_1__ generic; } ;
typedef TYPE_2__ menuradiobutton_s ;
 int QMF_HASMOUSEFOCUS ;
 int QM_ACTIVATED ;
 int menu_move_sound ;
 int stub1 (TYPE_2__*,int ) ;

__attribute__((used)) static sfxHandle_t RadioButton_Key( menuradiobutton_s *rb, int key )
{
 switch (key)
 {
  case 129:
   if (!(rb->generic.flags & QMF_HASMOUSEFOCUS))
    break;

  case 137:
  case 136:
  case 135:
  case 134:
  case 138:
  case 133:
  case 132:
  case 130:
  case 131:
  case 128:
   rb->curvalue = !rb->curvalue;
   if ( rb->generic.callback )
    rb->generic.callback( rb, QM_ACTIVATED );

   return (menu_move_sound);
 }


 return 0;
}
