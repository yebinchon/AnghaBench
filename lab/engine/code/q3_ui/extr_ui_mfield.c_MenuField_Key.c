
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int sfxHandle_t ;
struct TYPE_4__ {int flags; } ;
struct TYPE_5__ {int field; TYPE_1__ generic; } ;
typedef TYPE_2__ menufield_s ;


 int K_CHAR_FLAG ;
 int MField_CharEvent (int *,int) ;
 int MField_KeyDownEvent (int *,int) ;
 int QMF_LOWERCASE ;
 int QMF_NUMBERSONLY ;
 int QMF_UPPERCASE ;
 int Q_isalpha (int) ;
 int Q_islower (int) ;
 int Q_isupper (int) ;
 int menu_buzz_sound ;

sfxHandle_t MenuField_Key( menufield_s* m, int* key )
{
 int keycode;

 keycode = *key;

 switch ( keycode )
 {
  case 131:
  case 137:
  case 136:
  case 135:
  case 134:
  case 133:

   *key = 129;
   break;

  case 129:
  case 132:
  case 138:
  case 130:
  case 128:
   break;

  default:
   if ( keycode & K_CHAR_FLAG )
   {
    keycode &= ~K_CHAR_FLAG;

    if ((m->generic.flags & QMF_UPPERCASE) && Q_islower( keycode ))
     keycode -= 'a' - 'A';
    else if ((m->generic.flags & QMF_LOWERCASE) && Q_isupper( keycode ))
     keycode -= 'A' - 'a';
    else if ((m->generic.flags & QMF_NUMBERSONLY) && Q_isalpha( keycode ))
     return (menu_buzz_sound);

    MField_CharEvent( &m->field, keycode);
   }
   else
    MField_KeyDownEvent( &m->field, keycode );
   break;
 }

 return (0);
}
